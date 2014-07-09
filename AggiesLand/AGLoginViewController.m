//
//  AGLoginViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/29/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "AGLoginViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface AGLoginViewController ()

@property (nonatomic, strong) UIImageView *fieldsBackground;


@end

@implementation AGLoginViewController
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];

  [self.logInView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"login_background.png"]]];
  [self.logInView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LoginLogo.png"]]];
    
  //[self.logInView.passwordForgottenButton setBackgroundImage:[UIImage imageNamed:@"forgotpassword"] forState:UIControlStateNormal];
  //[self.logInView.passwordForgottenButton setBackgroundImage:[UIImage imageNamed:@"forgotpassword"] forState:UIControlStateHighlighted];
    
    
    
    

    
  [self.logInView.signUpButton setBackgroundImage:[UIImage imageNamed:@"signup.png"] forState:UIControlStateNormal];
  [self.logInView.signUpButton setBackgroundImage:[UIImage imageNamed:@"signup.png"] forState:UIControlStateHighlighted];
  [self.logInView.signUpButton setTitle:@"" forState:UIControlStateNormal];
  [self.logInView.signUpButton setTitle:@"" forState:UIControlStateHighlighted];
 
    [self.logInView.logInButton setBackgroundImage:[UIImage imageNamed:@"login.png"] forState:UIControlStateNormal];
    [self.logInView.logInButton setBackgroundImage:[UIImage imageNamed:@"login.png"] forState:UIControlStateHighlighted];
    [self.logInView.logInButton setTitle:@" " forState:UIControlStateNormal];
    [self.logInView.logInButton setTitle:@" " forState:UIControlStateHighlighted];

    
  
    
    //Add Login Field Background
    
    _fieldsBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"text field.png"]];
    [self.logInView addSubview:self.fieldsBackground];
    [self.logInView sendSubviewToBack:self.fieldsBackground];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self.logInView.logo setFrame:CGRectMake(35.0f, 20.0f, 250.0, 58.5f)];
    [self.logInView.usernameField setFrame:CGRectMake(35.0f, 145.0f, 250.0f, 50.0f)];
    [self.logInView.passwordField setFrame:CGRectMake(35.0f, 195.0f, 250.0f, 50.0f)];
    [self.fieldsBackground setFrame:CGRectMake(35.0f, 145.0f, 250.0f, 100.0f)];
    //[self.logInView.logInButton setFrame:CGRectMake(30.0f, 20.0f, 250.0f, 100.0f)];
   // [self.logInView.passwordForgottenButton setFrame:CGRectMake(0.0f, 295.0f, 320.0, 50.0f)];
    
    


}

@end
