//
//  FizzBuzz.h
//  ObjCStudy
//
//  Created by sanemat on 11/06/19.
//  Copyright 2011 na. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FizzBuzz : NSObject {
   NSNumber *stored;
}
@property (retain) NSNumber *stored;
-(void)      input: (int) number;
-(NSString *)say;
@end
