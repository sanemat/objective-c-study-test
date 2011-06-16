//
//  ObjCStudyAppDelegate.h
//  ObjCStudy
//
//  Created by sanemat on 11/06/16.
//  Copyright 2011 na. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ObjCStudyViewController;

@interface ObjCStudyAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ObjCStudyViewController *viewController;

@end
