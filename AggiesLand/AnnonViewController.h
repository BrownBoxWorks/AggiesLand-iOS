//
//  AnnonViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/23/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>
#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Twitter/Twitter.h>
#import "UIScrollView+EmptyDataSet.h"
#import "TTTAttributedLabel.h"
#import "NZAlertViewDelegate.h"



@interface AnnonViewController : PFQueryTableViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, UIActionSheetDelegate,
DZNEmptyDataSetSource,DZNEmptyDataSetDelegate,TTTAttributedLabelDelegate,MFMailComposeViewControllerDelegate,NZAlertViewDelegate>



@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;
@property (weak,nonatomic)IBOutlet UITableView *twitterTableView;
@property (nonatomic) NZAlertStyle alertStyle;


-(IBAction)goToSettings;





@end
