//
//  FizzBuzz.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/19.
//  Copyright 2011 na. All rights reserved.
//

#import "FizzBuzz.h"


@implementation FizzBuzz
@synthesize stored;

#pragma mark LifeCycle
-init {
   self = [super init];
   if (self)
   {
   }
   return(self);
}

-(void) dealloc
{
   [stored release];
   [super dealloc];
}

#pragma mark FizzBuzz
-(void) input: (int) number
{
   self.stored = [NSNumber numberWithInt: number];
}

-(NSString *)say
{
   if ([stored intValue] % 3 == 0 && [stored intValue] % 5 == 0)
   {
      return(@"FizzBuzz");
   }
   else if ([stored intValue] % 3 == 0)
   {
      return(@"Fizz");
   }
   else if ([stored intValue] % 5 == 0)
   {
      return(@"Buzz");
   }
   else
   {
      return([stored stringValue]);
   }
}
@end
