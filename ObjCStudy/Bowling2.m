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
}
-(int)score
{
   return(0);
}
@end