//
//  AppDelegate.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,PFSignUpViewControllerDelegate,PFLogInViewControllerDelegate>


@property(nonatomic, retain) UIWindow *window;

@end
