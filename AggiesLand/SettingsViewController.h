//
//  SettingsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 3/12/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <MessageUI/MessageUI.h>

@interface SettingsViewController : UITableViewController <MFMailComposeViewControllerDelegate>

-(IBAction)backToMain:(id)sender;

-(IBAction)logOut:(id)sender;

-(IBAction)report:(id)sender;

@end
