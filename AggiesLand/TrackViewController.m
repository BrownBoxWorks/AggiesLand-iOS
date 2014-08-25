//
//  TrackViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/18/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "TrackViewController.h"

@interface TrackViewController ()

@end

@implementation TrackViewController

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
    
    [track loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.ncataggies.com/SportSelect.dbml?&DB_OEM_ID=24500&SPID=74508&SPSID=593320"]]];
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
