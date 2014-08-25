//
//  ReportViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 3/12/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "ReportViewController.h"

@interface ReportViewController ()

@end

@implementation ReportViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showEmail:(id)sender{
    // Email Subject
    NSString*emailTitle=@"AggiesLand User Report";
    // Email Content
    //NSString*messageBody=@"Event Type: Event Name: Location: Date: Time: Price?: Special Instructions:";
    // To address
    NSArray*toRecipents=[NSArray arrayWithObject:@"aggiesland@gmail.com"];
    
    MFMailComposeViewController*mc=[[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate=self;
    [mc setSubject:emailTitle];
    //[mc setMessageBody:messageBody isHTML:NO];
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
