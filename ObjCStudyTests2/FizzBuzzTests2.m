//
//  FizzBuzzTests2.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/25.
//  Copyright 2011 na. All rights reserved.
//
#import <GHUnitIOS/GHUnit.h>

@interface  FizzBuzzTests2 : GHTestCase {}
@end

@implementation FizzBuzzTests2
-(void)testFail
{
   GHFail(@"gh failed test.", nil);
}
@end
