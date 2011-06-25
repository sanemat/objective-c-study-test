//
//  FizzBuzz2.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/25.
//  Copyright 2011 na. All rights reserved.
//

#import "FizzBuzz2.h"
@implementation FizzBuzz2
-(void)input: (int) number
{
   store = [[NSNumber alloc] initWithInt: number];
}
-(NSString *)say
{
   if ([store intValue] % 15 == 0)
   {
      return(@"FizzBuzz");
   }
   else if ([store intValue] % 3 == 0)
   {
      return(@"Fizz");
   }
   else if ([store intValue] % 5 == 0)
   {
      return(@"Buzz");
   }
   else
   {
      return([store stringValue]);
   }
}
@end
