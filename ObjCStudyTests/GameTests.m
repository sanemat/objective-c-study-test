//
//  GameTests.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/20.
//  Copyright 2011 na. All rights reserved.
//

#import "GameTests.h"


@implementation GameTests
-(void)setUp
{
   game = [[[Game alloc] init] retain];
}

-(void)tearDown
{
   [game release];
}

#pragma mark impliment
-(void)testRollGutter
{
   for (int i = 1; i <= 20; i++)
   {
      [game roll: 0];
   }
   STAssertEquals([game score], 0, @"20 times gutter score should be 0", nil);
}
-(void)testRollOne
{
   for (int i = 1; i <= 20; i++)
   {
      [game roll: 1];
   }
   STAssertEquals([game score], 20, @"20 times 1pin score should be 20", nil);
}
-(void)testOneStrike
{
   [game roll: 10];
   [game roll: 3];
   [game roll: 4];
   for (int i = 1; i <= 16; i++)
   {
      [game roll: 0];
   }
   STAssertEquals([game score], 24, @"strike and some pins and remains gutter score should be 24", nil);
}

-(void)testTurkey
{
    [game roll: 10];
    [game roll: 10];
    [game roll: 10];
    [game roll: 2];
    [game roll: 3];
    for (int i = 1; i <= 12; i++)
    {
        [game roll: 0];
    }
    STAssertEquals([game score], 72, @"turkey and some pins and remains gutter score should be 72", nil);
}

@end
