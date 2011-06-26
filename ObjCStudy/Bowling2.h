//
//  Bowling2.h
//  ObjCStudy
//
//  Created by sanemat on 11/06/27.
//  Copyright 2011 na. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Bowling2 : NSObject {
   NSMutableArray *store;
}
-(void)roll: (int) pins;
-(int) score;
-(BOOL)isStrike: (int) rollIndex;
-(BOOL)isSpare: (int) rollIndex;
-(int) sumOfFrame: (int) rollIndex;
-(int) strikeBonus: (int) rollIndex;
-(int) spareBonus: (int) rollIndex;

@end