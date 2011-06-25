//
//  FizzBuzzTests2.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/25.
//  Copyright 2011 na. All rights reserved.
//
#import <GHUnitIOS/GHUnit.h>
@interface FizzBuzz2 : NSObject {
}
-(void)input: (int) number;
@end
@implementation FizzBuzz2
-(void)input: (int) number
{
}
-(NSString *)say
{
   return(@"1");
}
@end

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
@end
