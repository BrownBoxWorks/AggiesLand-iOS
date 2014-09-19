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
