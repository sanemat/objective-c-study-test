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
@end
