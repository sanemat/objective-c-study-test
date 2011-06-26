//
//  Bowling2.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/27.
//  Copyright 2011 na. All rights reserved.
//

#import "Bowling2.h"

@implementation Bowling2
-(id)init
{
   self = [super init];
   if (self)
   {
      store = [[[NSMutableArray alloc] init] retain];
   }
   return(self);
}
-(void)dealloc
{
   [store release];
   [super dealloc];
}

-(void)roll: (int) pins
{
   [store addObject: [NSNumber numberWithInt: pins]];
}
-(int)score
{
   int result    = 0;
   int rollIndex = 0;

   for (int frame = 1; frame <= 10; frame++)
   {
      if ([self isStrike: rollIndex])
      {
         result    += [[store objectAtIndex: rollIndex] intValue];
         result    += [[store objectAtIndex: rollIndex + 1] intValue] + [[store objectAtIndex: rollIndex + 2] intValue];
         rollIndex += 1;
      }
      else if ([self isSpare: rollIndex])
      {
         result    += [[store objectAtIndex: rollIndex] intValue] + [[store objectAtIndex: rollIndex + 1] intValue];
         result    += [[store objectAtIndex: rollIndex + 2] intValue];
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
   return(![self isStrike: rollIndex] && [[store objectAtIndex: rollIndex] intValue] + [[store objectAtIndex: rollIndex + 1] intValue] == 10);
}
@end