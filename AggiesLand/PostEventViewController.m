//
//  PostEventViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/19/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "PostEventViewController.h"
#import "SWRevealViewController.h"

@interface PostEventViewController ()

@end

@implementation PostEventViewController

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
    
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    
}


-(IBAction)showEmail:(id)sender{
    // Email Subject
    NSString*emailTitle=@"Event Post Request";
    // Email Content
    NSString*messageBody=@"Event Type: Event Name: Location: Date: Time: Price?: Special Instructions:";
    // To address
    NSArray*toRecipents=[NSArray arrayWithObject:@"aggiesland@gmail.com"];

    MFMailComposeViewController*mc=[[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate=self;
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

-(IBAction)twitter:(id)sender{
    TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
    
    [twitter setInitialText:@"@AggieLandz Event Post"];
    [twitter addImage:[UIImage imageNamed:@""]];
    
    [self presentViewController:twitter animated:YES completion:Nil];
    
    twitter.completionHandler = ^(TWTweetComposeViewControllerResult res){
        if(res == TWTweetComposeViewControllerResultDone){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tweet Sent" message:@"Your tweet is sent and well will review the event be in our timeline! Please give us some time to review your request." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [alert show];
        }
        [self dismissModalViewControllerAnimated:YES];
    };
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
