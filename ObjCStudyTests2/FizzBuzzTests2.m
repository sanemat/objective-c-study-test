//
//  FizzBuzzTests2.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/25.
//  Copyright 2011 na. All rights reserved.
//
#import <GHUnitIOS/GHUnit.h>
#import "FizzBuzz2.h"

@interface  FizzBuzzTests2 : GHTestCase {
   FizzBuzz2 *fizzBuzz;
}
@end

@implementation FizzBuzzTests2
-(void)setUp
{
   fizzBuzz = [[[FizzBuzz2 alloc] init] retain];
}
-(void)tearDown
{
   [fizzBuzz release];
}
-(void)testOne
{
   [fizzBuzz input: 1];
   GHAssertEqualStrings([fizzBuzz say], @"1", @"input 1 should say 1", nil);
}
-(void)testTwo
{
   [fizzBuzz input: 2];
   GHAssertEqualStrings([fizzBuzz say], @"2", @"input 2 should say 2", nil);
}
-(void)testThree
{
   [fizzBuzz input: 3];
   GHAssertEqualStrings([fizzBuzz say], @"Fizz", @"input 3 should say Fizz", nil);
}
-(void)testSix
{
   [fizzBuzz input: 6];
   GHAssertEqualStrings([fizzBuzz say], @"Fizz", @"input 6 should say Fizz", nil);
}
-(void)testFive
{
   [fizzBuzz input: 5];
   GHAssertEqualStrings([fizzBuzz say], @"Buzz", @"input 5 should say Buzz", nil);
}
@end
