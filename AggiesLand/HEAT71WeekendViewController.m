//
//  HEAT71WeekendViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "HEAT71WeekendViewController.h"

@interface HEAT71WeekendViewController ()

@end

@implementation HEAT71WeekendViewController

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
    [seventyoneweekend loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"71Weekend" ofType:@"pdf"]isDirectory:NO]]];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
      hud.color = [UIColor colorWithRed:0.22 green:0.15 blue:0.70 alpha:0.90];
    hud.labelText = @"Loading";
    [hud hide:YES afterDelay:3.0];
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
