//
//  iOSCoverageTests.h
//  iOSCoverageTests
//
//  Created by Denis Lebedev on 23.08.12.
//  Copyright (c) 2012 Denis Lebedev. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "MyCalc.h"

@interface MyCalcTests : SenTestCase

@property (nonatomic, strong) MyCalc *calculator;

@end
