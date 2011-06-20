//
//  Game.h
//  ObjCStudy
//
//  Created by sanemat on 11/06/21.
//  Copyright 2011 na. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Game : NSObject {
    NSMutableArray *store;
}
@property (nonatomic, retain) NSMutableArray *store;
-(void) roll: (int) pin;
-(int)  score;
@end
