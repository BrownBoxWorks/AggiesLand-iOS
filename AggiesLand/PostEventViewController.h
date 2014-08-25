//
//  PostEventViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/19/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Twitter/Twitter.h>

@interface PostEventViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (weak,nonatomic )IBOutlet UIBarButtonItem *sidebarButton;


-(IBAction)showEmail:(id)sender;
-(IBAction)twitter:(id)sender;
@end
