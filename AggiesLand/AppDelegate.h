//
//  AppDelegate.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,PFLogInViewControllerDelegate,PFSignUpViewControllerDelegate>


@property(nonatomic, retain) UIWindow *window;

@end
