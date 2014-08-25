//
//  ReportViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 3/12/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ReportViewController : UIViewController <MFMailComposeViewControllerDelegate>

-(IBAction)showEmail:(id)sender;

@end
