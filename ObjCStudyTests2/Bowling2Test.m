//
//  Bowling2Test.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/26.
//  Copyright 2011 na. All rights reserved.
//
#import <GHUnitIOS/GHUnit.h>
@interface Bowling2 : NSObject {
}
@end
@implementation Bowling2
@end

@interface Bowling2Test : GHTestCase {
   Bowling2 *game;
}
@end

@implementation Bowling2Test

-(void)setUp
{
   game = [[[Bowling2 alloc] init] retain];
}

-(void)tearDown
{
   [game release];
}

-(void)testRoll
{
    GHAssertNoThrow([game roll:1], @"bowling roll should not throw exception", nil);
}

@end
