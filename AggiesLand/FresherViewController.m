//
//  FresherViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "FresherViewController.h"

@interface FresherViewController ()

@end

@implementation FresherViewController

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
    [fresher loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://fresherthanflyy.bigcartel.com/"]]];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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
