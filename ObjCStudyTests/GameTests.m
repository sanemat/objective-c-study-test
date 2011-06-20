//
//  GameTests.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/20.
//  Copyright 2011 na. All rights reserved.
//

#import "GameTests.h"


@implementation GameTests
- (id)init {
    self = [super init];
    if (self) {
        game = [[[Game alloc] init] retain];
    }
    return self;
}
- (void)dealloc {
    [game release];
    [super dealloc];
}
@end
