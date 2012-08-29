
#!/bin/sh

 TARGET_NAME="iOSCoverage"
 TEST_TARGET_NAME="iOSCoverageTests"
 BUILD_CONFIG="Debug"
 SDK_VERSION="iphonesimulator5.1"

rm -rf build
rm -rf html-report

echo Building and running tests
xcodebuild -target $TEST_TARGET_NAME OBJECT_FILE_DIR_normal=/build/ TEST_AFTER_BUILD=YES -sdk iphonesimulator5.1 -configuration $BUILD_CONFIG -xcconfig settings.xcconfig
echo Copying files
mkdir build/gcda
cp build/$TARGET_NAME.build/$BUILD_CONFIG-iphonesimulator/$TARGET_NAME.build/Objects-normal/i386/*.gcda build/gcda/
cp build/$TARGET_NAME.build/$BUILD_CONFIG-iphonesimulator/$TARGET_NAME.build/Objects-normal/i386/*.gcno build/gcda/

echo Generating report
cd build/gcda
lcov -t 'Code coverage report' -o report.info -c -d .
cd .. 
cd ..
genhtml -o html-report build/gcda/report.info