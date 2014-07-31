//
//  AnnonDetailViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "AnnonDetailViewController.h"

@interface AnnonDetailViewController ()

@end

@implementation AnnonDetailViewController
@synthesize titleLabel,bodyLabel,postedByLabel,dateLabel;
@synthesize annon;

@synthesize scroller;

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
    
    // Initialize the banner at the bottom of the screen.
    
    
    
    CGPoint origin = CGPointMake(0.0,
                                 56.0);
    
    // Use predefined GADAdSize constants to define the GADBannerView.
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner
                                                 origin:origin];
    
    // Specify the ad unit ID.
    bannerView_.adUnitID = @"ca-app-pub-2971437863634496/3440097369";
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    
    
    //Scrool View
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 800))];

    
    self.titleLabel.text = annon.title;
    self.bodyLabel.text = annon.body;
    self.postedByLabel.text = annon.postedBy;
    self.dateLabel.text = annon.date;
    self.imageFileLabel.file= annon.imageFile;
    
    [bodyLabel sizeToFit];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)enlagePicture:(id)sender{
    UIButton *button = (UIButton *)sender;
    [button setFrame:CGRectMake(0, 0, 100, 100)];
    // or [yourImageViewName setFrame:CGRectMake(0, 0, 100, 100)];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
