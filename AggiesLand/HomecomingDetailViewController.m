//
//  HomecomingDetailViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "HomecomingDetailViewController.h"

@interface HomecomingDetailViewController ()

@end

@implementation HomecomingDetailViewController
@synthesize nameLabel, dateLabel, locationLabel, sgLabel,hostLabel, detailsLabel,priceLabel;
@synthesize homecoming;

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
    self.nameLabel.text = homecoming.name;
    self.dateLabel.text = homecoming.date;
    self.locationLabel.text = homecoming.location;
    self.sgLabel.text = homecoming.sg;
    self.hostLabel.text = homecoming.host;
    self.detailsLabel.text = homecoming.details;
    self.priceLabel.text = homecoming.price;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
