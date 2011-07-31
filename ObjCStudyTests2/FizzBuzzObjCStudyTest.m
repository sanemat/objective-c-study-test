//
//  FizzBuzzObjCStudyTest.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/26.
//  Copyright 2011 na. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "ObjCStudyAppDelegate.h"

@interface  FizzBuzzObjCStudyTest : GHTestCase {
   ObjCStudyAppDelegate *appDelegate;
}
@end

@implementation FizzBuzzObjCStudyTest
-(void)setUp
{
   appDelegate = [[ObjCStudyAppDelegate alloc] init];
}
-(void)tearDown
{
    [appDelegate release];
}
-(void) testAppDelegate
{
   GHAssertNotNil(appDelegate, @"Cannot find the application delegate", nil);
}
@end
