//
//  MyCalc.m
//  iOSCoverage
//
//  Created by Denis Lebedev on 23.08.12.
//  Copyright (c) 2012 Denis Lebedev. All rights reserved.
//

#import "MyCalc.h"

@implementation MyCalc

- (CGFloat)performOperation:(MyMathOperation)operation withA:(CGFloat)a B:(CGFloat)b {
    CGFloat result = 0.f;
    
    switch (operation) {
        case MyMathOperationAdd:
            result = a + b;
            break;
        case MyMathOperationSubtract:
            result = a - b;
            
            break;
        case MyMathOperationDivide:
            result = a / b;
            
            break;
        case MyMathOperationMultiply:
            result = a * b;
            break;
        default:
            NSLog(@"Unsupported operation");
            break;
    }
    return result;
}
- (CGFloat)negate:(CGFloat)number {
    //this method works incorrectly
    return number;
}

@end
