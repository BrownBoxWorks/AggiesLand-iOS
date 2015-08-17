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
    
    


    
    //Scrool View
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 1000))];
    
    
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
