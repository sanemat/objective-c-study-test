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
   if (self = [super init])
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
   stored = [[NSNumber alloc] initWithInt: number];
}

-(NSString *)say
{
   if ([stored isEqualToNumber: [[[NSNumber alloc] initWithInt: 3] autorelease]])
   {
      return(@"Fizz");
   }
   return([stored stringValue]);
}
@end
