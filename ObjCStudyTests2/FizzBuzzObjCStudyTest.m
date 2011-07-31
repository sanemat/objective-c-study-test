//
//  FizzBuzzObjCStudyTest.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/26.
//  Copyright 2011 na. All rights reserved.
//
// GUI usage
// Product -> Run Then Push "Run"
// CLI usage
// $ GHUNIT_CLI=1 xcodebuild -target ObjCStudyTests2 -sdk iphonesimulator4.3 -configuration Debug clean build

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
