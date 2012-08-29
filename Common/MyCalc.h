//
//  MyCalc.h
//  iOSCoverage
//
//  Created by Denis Lebedev on 23.08.12.
//  Copyright (c) 2012 Denis Lebedev. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum MyMathOperation {
    MyMathOperationAdd,
    MyMathOperationSubtract,
    MyMathOperationDivide,
    MyMathOperationMultiply
}
MyMathOperation;

@interface MyCalc : NSObject

- (CGFloat)performOperation:(MyMathOperation)operation withA:(CGFloat)a B:(CGFloat)b;
- (CGFloat)negate:(CGFloat)number;

@end
