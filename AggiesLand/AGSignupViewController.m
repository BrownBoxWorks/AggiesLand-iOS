//
//  AGSignupViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 2/8/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "AGSignupViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface AGSignupViewController ()
@property (nonatomic, strong) UIImageView *fieldsBackground;


@end

@implementation AGSignupViewController
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
	// Do any additional setup after loading the view.
    
    [self.signUpView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"login_background.png"]]];
    [self.signUpView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LoginLogo.png"]]];
    
    [self.signUpView.signUpButton setBackgroundImage:[UIImage imageNamed:@"signup.png"] forState:UIControlStateNormal];
    [self.signUpView.signUpButton setBackgroundImage:[UIImage imageNamed:@"signup.png"] forState:UIControlStateHighlighted];
    [self.signUpView.signUpButton setTitle:@"" forState:UIControlStateNormal];
    [self.signUpView.signUpButton setTitle:@"" forState:UIControlStateHighlighted];

    
    [self.signUpView.dismissButton setImage:[UIImage imageNamed:@"back button.png"] forState:UIControlStateNormal];
    
    
    [self setFieldsBackground:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sign up_no lines.png"]]];
    [self.signUpView insertSubview:_fieldsBackground atIndex:1];
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
   //[self.signUpView.logo setFrame:CGRectMake(35.0f, 20.0f, 250.0, 58.5f)];
   [self.signUpView.signUpButton setFrame:CGRectMake(0.0f, 145.0f, 320.0f, 50.0f)];
   [self.signUpView.dismissButton setFrame:CGRectMake(10.0f, 20.0f, 87.5f, 45.5f)];

  //  float yOffset = [UIScreen mainScreen].bounds.size.height <= 480.0f ? 30.0f : 0.0f;
    
   // CGRect fieldFrame = self.signUpView.usernameField.frame;
    
    [self.signUpView.dismissButton setFrame:CGRectMake(10.0f, 20.0f, 67.5f,30.5f)];
    [self.signUpView.logo setFrame:CGRectMake(35.0f, 75.0f, 250.0, 58.5f)];
    [self.signUpView.signUpButton setFrame:CGRectMake(35.0f, 385.0f, 250.0f, 40.0f)];
    [self.fieldsBackground setFrame:CGRectMake(35.0f, /*fieldFrame.origin.y + yOffset*/177.0f, 250.0f, 174.0f)];
    
    /*
    [self.signUpView.usernameField setFrame:CGRectMake(fieldFrame.origin.x + 5.0f,
                                                       fieldFrame.origin.y + yOffset,
                                                       fieldFrame.size.width - 10.0f,
                                                       fieldFrame.size.height)];
    yOffset += fieldFrame.size.height;
    
    [self.signUpView.passwordField setFrame:CGRectMake(fieldFrame.origin.x + 5.0f,
                                                       fieldFrame.origin.y + yOffset,
                                                       fieldFrame.size.width - 10.0f,
                                                       fieldFrame.size.height)];
    yOffset += fieldFrame.size.height;
    
    [self.signUpView.emailField setFrame:CGRectMake(fieldFrame.origin.x + 5.0f,
                                                    fieldFrame.origin.y + yOffset,
                                                    fieldFrame.size.width - 10.0f,
                                                    fieldFrame.size.height)];

*/
}
@end
