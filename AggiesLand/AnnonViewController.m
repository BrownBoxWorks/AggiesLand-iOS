//
//  AnnonViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/23/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "AnnonViewController.h"
#import "AnnonCustomCell.h"
#import "Annon.h"
#import "AnnonDetailViewController.h"
#import "SWRevealViewController.h"
#import "AGLoginViewController.h"
#import "AGSignupViewController.h"

@interface AnnonViewController ()

@end

@implementation AnnonViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(IBAction)goToSettings{
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Settings" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Settings",@"Add Event Via E-Mail",@"Add Event Via Twitter", nil];
    [actionSheet showInView:self.view];
    
    /*
    UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"SettingsStoryboard" bundle:nil];
    UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
    //initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:initialSettingsVC animated:YES];
     
     */
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    NSString *title = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"Settings"])
    {
        //do your stuff in here
        
        UIStoryboard *settingsStoryboard = [UIStoryboard storyboardWithName:@"SettingsStoryboard" bundle:nil];
        UIViewController *initialSettingsVC = [settingsStoryboard instantiateInitialViewController];
        //initialSettingsVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        [self presentModalViewController:initialSettingsVC animated:YES];
        
    }
    
    else if ([title isEqualToString:@"Add Event Via E-Mail"]){
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
    
    
    else if ([title isEqualToString:@"Add Event Via Twitter"]){
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



-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"News"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    /*
    
    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
        if (!error){
            PFFile *file = [object objectForKey:@"imageFile"];
            
            imageView.file = file;
            [imageView loadInBackground];
        }
    }];
    */
    [query orderByDescending:@"createdAt"];
    
    return query;
}
- (void)viewDidLoad
{
    //Menu View Controller
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
   self.navigationItem.title = @"News Feed";
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"TitleLogo.png"]];
    
    [super viewDidLoad];
    
    // If No Data Is Present
    

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];


    if(![PFUser currentUser]){
    
    AGLoginViewController *logInViewController = [[AGLoginViewController alloc]init];
    [logInViewController setDelegate:self];
        logInViewController.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsSignUpButton | PFLogInFieldsPasswordForgotten ;
    
    AGSignupViewController *signUpViewController = [[AGSignupViewController alloc]init];
    [signUpViewController setDelegate:self];
    
    [logInViewController setSignUpController:signUpViewController];
    
    [self presentViewController:logInViewController animated:YES completion:NULL];
    
    
    //self.view.backgroundColor = [UIColor colorWithPatternImage:
                               //  [UIImage imageNamed:@"sidebar_title.png"]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
  static NSString *CellIdentifier = @"Cell";
    AnnonCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if(!cell){
        cell = [[AnnonCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

   
  

    
    NSString *nameLabel = [object objectForKey:@"Title"];
    NSString *bodyLabel = [object objectForKey:@"Body"];
    NSString *dateLabel = [object objectForKey:@"Date"];
    NSString *createdByLabel = [object objectForKey:@"PostedBy"];
    
    PFFile *thumbnail =[object objectForKey:@"imageFile"];
    cell.imageViewFile.image = [UIImage imageNamed:@"placeholder.png"];
    cell.imageViewFile.file = thumbnail;
    [cell.imageViewFile loadInBackground];
    
    [cell.title setText:[NSString stringWithFormat:@"%@",nameLabel]];
    [cell.body setText:[NSString stringWithFormat:@"%@",bodyLabel]];
    [cell.postedBy setText:[NSString stringWithFormat:@"%@",createdByLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];
    
    
    return cell;
}


- (void) objectsDidLoad:(NSError *)error
{
    [super objectsDidLoad:error];
    
    NSLog(@"error: %@", [error localizedDescription]);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showAnnonDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        AnnonDetailViewController *destViewController = segue.destinationViewController;
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
        Annon *annon = [[Annon alloc] init];
        annon.title = [object objectForKey:@"Title"];
        annon.date = [object objectForKey:@"Date"];
        annon.postedBy = [object objectForKey:@"PostedBy"];
        annon.body = [object objectForKey:@"Body"];
        annon.imageFile = [object objectForKey:@"imageFile"];
        

        
       
        destViewController.annon = annon;
        
    }
}


-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-(BOOL)logInViewController:(PFLogInViewController *)logInController shouldBeginLogInWithUsername:(NSString *)username password:(NSString *)password{
    if (username && password && username.length != 0 && password.length !=0){
        return YES;
    }
    
    [[[UIAlertView alloc]initWithTitle:@"Missing Information" message:@"Make sure you fill all the information!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
    return NO;
}

-(void)logInViewController:(PFLogInViewController *)logInController didLogInUser:(PFUser *)user{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(void)logInViewController:(PFLogInViewController *)logInController didFailToLogInWithError:(NSError *)error{
    [[[UIAlertView alloc]initWithTitle:@"Username/Password Mismatched" message:@"Username and password does not exist. Please check your credentials and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
}

-(void)logInViewControllerDidCancelLogIn:(PFLogInViewController *)logInController{
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}






// Sent to the delegate to determine whether the sign up request should be submitted to the server.
- (BOOL)signUpViewController:(PFSignUpViewController *)signUpController shouldBeginSignUp:(NSDictionary *)info {
    BOOL informationComplete = YES;
    
    // loop through all of the submitted data
    for (id key in info) {
        NSString *field = [info objectForKey:key];
        if (!field || field.length == 0) { // check completion
            informationComplete = NO;
            break;
        }
    }
    
    // Display an alert if a field wasn't completed
    if (!informationComplete) {
        [[[UIAlertView alloc] initWithTitle:@"Missing Information"
                                    message:@"Make sure you fill out all of the following information"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
    
    return informationComplete;
}


// Sent to the delegate when a PFUser is signed up.
- (void)signUpViewController:(PFSignUpViewController *)signUpController didSignUpUser:(PFUser *)user {
    [self dismissModalViewControllerAnimated:YES]; // Dismiss the PFSignUpViewController
}

// Sent to the delegate when the sign up attempt fails.
- (void)signUpViewController:(PFSignUpViewController *)signUpController didFailToSignUpWithError:(NSError *)error {
    NSLog(@"Failed to sign up...");
}

// Sent to the delegate when the sign up screen is dismissed.
- (void)signUpViewControllerDidCancelSignUp:(PFSignUpViewController *)signUpController {
    NSLog(@"User dismissed the signUpViewController");
}
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

@end
