//
//  CampusDetailsViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "CampusDetailsViewController.h"

@interface CampusDetailsViewController ()

@end

@implementation CampusDetailsViewController
@synthesize nameLabel, dateLabel, locationLabel, priceLabel,instructionsLabel;
@synthesize campus;

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
                                                 origin:origin];    // Specify the ad unit ID.
    bannerView_.adUnitID = @"ca-app-pub-2971437863634496/1963364164";
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    //bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    
    //Scrool View
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 800))];
    
    self.nameLabel.text = campus.name;
    self.dateLabel.text = campus.date;
    self.locationLabel.text = campus.location;
    self.priceLabel.text = campus.price;
    self.instructionsLabel.text = campus.instructions;
    self.imageFileLabel.file= campus.imageFile;
    
    [instructionsLabel sizeToFit];
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
