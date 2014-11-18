//
//  AppDelegate.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import "iRate.h"
#import "AMScrollingNavbarViewController.h"
#import <Crashlytics/Crashlytics.h>

// Chat Import
#import "AppConstant.h"
#import "GroupView.h"
#import "utilities.h"


@implementation AppDelegate

@synthesize window = _window;



+(void)initialize{
    // Configure Rating Properties
    
    [iRate sharedInstance].daysUntilPrompt = 5;
    [iRate sharedInstance].usesUntilPrompt = 10;
    [iRate sharedInstance].previewMode = NO;
    [iRate sharedInstance].appStoreID = 779682094;
    [iRate sharedInstance].messageTitle = NSLocalizedString(@"Like AggiesLand?", @"Title");
    [iRate sharedInstance].message = NSLocalizedString(@"We would like to hear from you. Please rate our app in the App Store to support for any improvements", @"Message");
    [iRate sharedInstance].rateButtonLabel = NSLocalizedString(@"Rate App", @"Rate Option");
    [iRate sharedInstance].cancelButtonLabel = NSLocalizedString(@"No Thanks", @"Cancel");
    [iRate sharedInstance].remindButtonLabel = NSLocalizedString(@"Remind Me Later", @"Remind Option");
    
}




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Crashlytics API Key
    [Crashlytics startWithAPIKey:@"8e03bf8519f7903a4e20ae17146a26bdb3d4774a"];
    [[Crashlytics sharedInstance] setDebugMode:YES];
    
  
    
// Parse SDK Credentials
   [Parse setApplicationId:@"5b91v6F6A0GaeC64FuIgeCctYaEM81LFybSR4g7K"              clientKey:@"wlp32pFFhzB2jz5dbHrTCHBPkqB7Y9AFxNTKrYl6"];
    
    
//Twitter SDK Credentials
    [PFTwitterUtils initializeWithConsumerKey:@"SU9G1VGDolOud90gorBl0w"
                               consumerSecret:@"i42q024WeH8nceyPTnXtXCIjPiposEpgq9rR23jc"];
   
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    

/* ============================================================================================================================
 Custom UI Override
 AppDelegate class overrides any main UI elements in title screen such as fonts, text colors, typeface, etc
 ============================================================================================================================*/
    
  
    
    //Tutorial View
    
    
    [[UINavigationBar appearance]setBarTintColor:[UIColor blueColor]];
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    shadow.shadowOffset = CGSizeMake(0, 1);
    

    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          
    
    [UIColor colorWithRed:245.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0],
    NSForegroundColorAttributeName, shadow,NSShadowAttributeName,
    [UIFont fontWithName:@"Euphemia UCAS"size:21.0],NSFontAttributeName, nil]];

    
    // Parse Push Notifications Credentials
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|
                                                    UIRemoteNotificationTypeAlert|
     UIRemoteNotificationTypeSound];
    
    
    // Return customApperance Method
    [self customApperance];
    
    
    //
    [PFImageView class];

    UIBarButtonItem *barButtonAppearance = [UIBarButtonItem appearance];
    [barButtonAppearance setTintColor:[UIColor whiteColor]];
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];

    
    
    
    return YES;
}

-(void)customApperance{
    
    UIImage *NavBar =[UIImage imageNamed:@"Title Bar.png"];
        [[UINavigationBar appearance] setBackgroundImage:NavBar forBarMetrics:UIBarMetricsDefault];
}





/* ============================================================================================================================
 Parse Push Notofications Preferences
 
 Use of Push Notifications using Parse backend server, including credentials and direction in dispalying push notifications with default sound, 
 Incrementations,etc
 ============================================================================================================================**/

-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)newDeviceToken {
    PFInstallation *currentInstall = [PFInstallation currentInstallation];
    [currentInstall setDeviceTokenFromData:newDeviceToken];
    [currentInstall saveInBackground];
    
}

-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
    [PFPush handlePush:userInfo];
}



//End Method to finish launching with options

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}




@end
