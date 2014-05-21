//
//  AnnonViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/23/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>
#import <UIKit/UIKit.h>

@interface AnnonViewController : PFQueryTableViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, UIActionSheetDelegate>

@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;

-(IBAction)goToSettings;

-(IBAction)logout:(id)sender;




@end
