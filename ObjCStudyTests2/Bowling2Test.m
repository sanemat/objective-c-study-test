//
//  Bowling2Test.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/26.
//  Copyright 2011 na. All rights reserved.
//
#import <GHUnitIOS/GHUnit.h>
#import "Bowling2.h"

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
   GHAssertNoThrow([game roll: 1], @"bowling roll should not throw exception", nil);
}

-(void)testRollGutter
{
   for (int i = 1; i <= 20; i++)
   {
      [game roll: 0];
   }
   GHAssertEquals([game score], 0, @"all gutter, score should equal 0", nil);
}

-(void)testRollEveryOne
{
   for (int i = 1; i <= 20; i++)
   {
      [game roll: 1];
   }
   GHAssertEquals([game score], 20, @"all 1pin score should equal 20", nil);
}

-(void)testRollStrike
{
    [game roll:10];// => 17
    [game roll:3];// => 20
    [game roll:4];// => 24
    for (int i = 1; i <= 8 * 2; i ++) {
        [game roll:0];
    }
    GHAssertNoThrow([game score], @"strike then I can sum pins", nil);
}

@end
