//
//  TodayViewController.m
//  AggiesLand Event Request
//
//  Created by Neegbeah Reeves on 9/18/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "TodayViewController.h"
//#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () /*<NCWidgetProviding>*/

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}


*/
-(IBAction)twitter:(id)sender{
    
    TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
    
    [twitter setInitialText:@"@AggieLandz Event Post"];
    [twitter addImage:[UIImage imageNamed:@""]];
    
    [self presentViewController:twitter animated:YES completion:Nil];
    
    twitter.completionHandler = ^(TWTweetComposeViewControllerResult res){

        [self dismissModalViewControllerAnimated:YES];
    };



}


-(IBAction)email:(id)sender{
    
    // Email Subject
    NSString*emailTitle=@"Event Post Request";
    // Email Content
    NSString*messageBody=@"Event Type: Event Name: Location: Date: Time: Price?: Special Instructions:";
    // To address
    NSArray*toRecipents=[NSArray arrayWithObject:@"aggiesland@gmail.com"];
    
    MFMailComposeViewController*mc=[[MFMailComposeViewController alloc] init];
    //mc.mailComposeDelegate=self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
    
}

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch(result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@",[error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
