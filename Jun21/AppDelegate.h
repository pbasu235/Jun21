//
//  AppDelegate.h
//  Jun21
//
//  Created by Piyal Basu on 6/21/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>

@class View;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
