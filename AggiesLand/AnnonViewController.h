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
#import "UIScrollView+EmptyDataSet.h"
#import "MBProgressHUD.h"
#import "GADBannerView.h"



@interface AnnonViewController : PFQueryTableViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, UIActionSheetDelegate,
DZNEmptyDataSetSource,DZNEmptyDataSetDelegate,MBProgressHUDDelegate>{
    MBProgressHUD *HUD;
    
    GADBannerView *bannerView_; // Google Admob Banner View
}



@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;

-(IBAction)goToSettings;






@end
