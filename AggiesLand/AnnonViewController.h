//
//  AnnonViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/23/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>
#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Twitter/Twitter.h>

@interface AnnonViewController : PFQueryTableViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, UIActionSheetDelegate>

@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;

-(IBAction)goToSettings;






@end
