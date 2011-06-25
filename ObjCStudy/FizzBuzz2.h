//
//  FizzBuzz2.h
//  ObjCStudy
//
//  Created by sanemat on 11/06/25.
//  Copyright 2011 na. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FizzBuzz2 : NSObject {
    NSNumber *store;
}
-(void)input: (int) number;
-(NSString *)say;
@end