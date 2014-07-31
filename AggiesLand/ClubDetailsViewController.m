//
//  ClubDetailsViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 1/10/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "ClubDetailsViewController.h"

@interface ClubDetailsViewController ()

@end

@implementation ClubDetailsViewController

@synthesize nameLabel,dateLabel, clubNameLabel, instructionsLabel, priceLabel, locationLabel;
@synthesize clubs;

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
    
    
    CGPoint origin = CGPointMake(0.0,
                                 56.0);
    
    // Use predefined GADAdSize constants to define the GADBannerView.
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner
                                                 origin:origin];
    
    // Specify the ad unit ID.
    bannerView_.adUnitID = @"ca-app-pub-2971437863634496/4916830563";
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    
    //Scrool View
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 800))];
    
    
    self.nameLabel.text = clubs.name;
    self.dateLabel.text = clubs.date;
    self.clubNameLabel.text = clubs.clubName;
    self.instructionsLabel.text = clubs.instructions;
    self.priceLabel.text = clubs.price;
    self.locationLabel.text = clubs.location;
    self.imageFileLabel.file = clubs.file;

    
    [instructionsLabel sizeToFit];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
