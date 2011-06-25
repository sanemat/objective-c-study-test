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
   return([store stringValue]);
}
@end
