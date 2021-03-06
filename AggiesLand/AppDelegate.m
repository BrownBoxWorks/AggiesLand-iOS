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
#import <Fabric/Fabric.h>
#import <TwitterKit/TwitterKit.h>
#import <Crashlytics/Crashlytics.h>

NSString *const BFTaskMultipleExceptionsException = @"BFMultipleExceptionsException";



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

    [[Twitter sharedInstance] startWithConsumerKey:@"IFwzdrBcMHEugm5CfS5AMlJ1k" consumerSecret:@"b33yv2K7GoIi1cGGCtj7OzyIEcGplna08CBxDAVhPAEvIjkrkL"];
 
    [Fabric with:@[[Twitter sharedInstance]]];
    
    //Fabric Twitter
    [Fabric with:@[CrashlyticsKit,TwitterKit]];
  
    
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
    
    
    //[[UINavigationBar appearance]setBarTintColor:[UIColor blueColor]];
   
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    shadow.shadowOffset = CGSizeMake(0, 1);
    

    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          
    
    [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0],
    NSForegroundColorAttributeName, shadow,NSShadowAttributeName,
    [UIFont fontWithName:@"Euphemia UCAS"size:21.0],NSFontAttributeName, nil]];

    
    // Parse Push Notifications Credentials
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|
                                                    UIRemoteNotificationTypeAlert|
                                                    UIRemoteNotificationTypeSound];
    
    
    // Return customApperance Method
    //[self customApperance];
    
    // UITab Color
    [[UITabBar appearance] setBackgroundColor:[UIColor colorWithRed:(255/256.0) green:(255/256.0) blue:(255/256.0) alpha:0.0]];

    [[UITabBar appearance] setSelectedImageTintColor:[UIColor blueColor]];


    
    //
    [PFImageView class];
/*
    UIBarButtonItem *barButtonAppearance = [UIBarButtonItem appearance];
    [barButtonAppearance setTintColor:[UIColor whiteColor]];
*/
    // Tab Bar Defualt background
    //[[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //Remove Back Button Label
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -50.f) forBarMetrics:UIBarMetricsDefault];

    
    //[[UIBarButtonItem appearance] setTintColor:[UIColor blueColor]];
    return YES;
}

/*
-(void)customApperance{
    
    UIImage *NavBar =[UIImage imageNamed:@"Title Bar.png"];
        [[UINavigationBar appearance] setBackgroundImage:NavBar forBarMetrics:UIBarMetricsDefault];
}

*/



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
