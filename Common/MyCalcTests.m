//
//  iOSCoverageTests.m
//  iOSCoverageTests
//
//  Created by Denis Lebedev on 23.08.12.
//  Copyright (c) 2012 Denis Lebedev. All rights reserved.
//

#import "MyCalcTests.h"

@implementation MyCalcTests

- (void)setUp {
    [super setUp];
    self.calculator = [[MyCalc alloc] init];
    
}

- (void)tearDown {    
    [super tearDown];
    self.calculator = nil;
}

- (void)testNegation {
    CGFloat input = 3;
    CGFloat expected = -3;
    
    CGFloat result = [self.calculator negate:input];
    STAssertEquals(result, expected, @"Negation failed. Expected: %f, Actual: %f", expected, result);
}

- (void)testAddition {
    CGFloat a = 3;
    CGFloat b = 4;
    CGFloat expected = a + b;
    
    CGFloat result = [self.calculator performOperation:MyMathOperationAdd withA:a B:b];
    STAssertEquals(result, expected, @"Addition failed. Expected: %f, Actual: %f", expected, result);
}

- (void)testMultiplication {
    CGFloat a = 14;
    CGFloat b = 3;
    CGFloat expected = a * b;
    
    CGFloat result = [self.calculator performOperation:MyMathOperationMultiply withA:a B:b];
    STAssertEquals(result, expected, @"Addition failed. Expected: %f, Actual: %f", expected, result);
}

@end
