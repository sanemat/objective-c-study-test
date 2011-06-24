//
//  Game.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/21.
//  Copyright 2011 na. All rights reserved.
//

#import "Game.h"


@implementation Game
@synthesize store;
-(id)init
{
   self = [super init];
   if (self)
   {
      store = [[NSMutableArray alloc] init];
   }
   return(self);
}
-(void)dealloc
{
   [store   release];
   [super dealloc];
}

-(void) roll: (int) pin
{
   [store addObject: [NSNumber numberWithInt: pin]];
}
-(int) score
{
   int result    = 0;
   int rollIndex = 0;

   for (int frame = 1; frame <= 10; frame++)
   {
      if ([self isStrike: rollIndex])
      {
         result    += [[store objectAtIndex: rollIndex] intValue] + [self strikeBonus: rollIndex];
         rollIndex += 1;
      }
      else if ([self isSpare: rollIndex])
      {
         result    += [[store objectAtIndex: rollIndex] intValue] + [[store objectAtIndex: rollIndex + 1] intValue] + [[store objectAtIndex: rollIndex + 2] intValue];
         rollIndex += 2;
      }
      else
      {
         result    += [[store objectAtIndex: rollIndex] intValue] + [[store objectAtIndex: rollIndex + 1] intValue];
         rollIndex += 2;
      }
   }
   return(result);
}
-(BOOL)isStrike: (int) rollIndex
{
   return([[store objectAtIndex: rollIndex] intValue] == 10);
}
-(BOOL)isSpare: (int) rollIndex
{
   return([[store objectAtIndex: rollIndex] intValue] + [[store objectAtIndex: rollIndex + 1] intValue] == 10);
}
-(int)strikeBonus: (int) rollIndex
{
   return([[store objectAtIndex: rollIndex + 1] intValue] + [[store objectAtIndex: rollIndex + 2] intValue]);
}
@end
