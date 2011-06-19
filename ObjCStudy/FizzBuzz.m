//
//  FizzBuzz.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/19.
//  Copyright 2011 na. All rights reserved.
//

#import "FizzBuzz.h"


@implementation FizzBuzz

#pragma mark LifeCycle
-init {
   if (self = [super init])
   {
   }
   return(self);
}

-(void) dealloc
{
   [super dealloc];
}

#pragma mark FizzBuzz
-(void) input: (int) number
{
}

-(NSString *)say
{
   return(@"1");
}
@end
