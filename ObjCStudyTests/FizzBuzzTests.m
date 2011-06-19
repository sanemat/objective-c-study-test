//
//  FizzBuzzTests.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/19.
//  Copyright 2011 na. All rights reserved.
//

#import "FizzBuzzTests.h"


@implementation FizzBuzzTests
-(void)setUp
{
   fizzBuzz = [[FizzBuzz new] retain];
}

-(void) tearDown
{
   [fizzBuzz release];
}

-(void) testOne
{
   [fizzBuzz input: 1];
   STAssertEqualObjects([fizzBuzz say], @"1", @"1のとき1であること");
}

-(void) testTwo
{
    [fizzBuzz input:2];
    STAssertEqualObjects([fizzBuzz say], @"2", @"2のとき2であること");
}

-(void) testThree
{
    [fizzBuzz input:3];
    STAssertEqualObjects([fizzBuzz say], @"Fizz", @"3のときFizzであること");
}

-(void) testSix
{
    [fizzBuzz input:6];
    STAssertEqualObjects([fizzBuzz say], @"Fizz", @"6のときFizzであること");
}

-(void) testFive
{
    [fizzBuzz input:5];
    STAssertEqualObjects([fizzBuzz say], @"Buzz", @"5のときBuzzであること");
}

@end
