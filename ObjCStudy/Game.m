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
    //10frame act, add roll_index
    return [[store valueForKeyPath:@"@sum.self"] intValue];
}
@end
