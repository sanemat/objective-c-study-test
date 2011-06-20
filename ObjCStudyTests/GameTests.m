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
@end
