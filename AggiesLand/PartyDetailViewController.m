//
//  PartyDetailViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "PartyDetailViewController.h"

@interface PartyDetailViewController ()

@end

@implementation PartyDetailViewController

@synthesize nameLabel, dateLabel, locationLabel, typeLabel, instructionsLabel, priceLabel;
@synthesize party;
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
    
    //Scrool View
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:(CGSizeMake(320, 800))];
    
    self.nameLabel.text =party.name;
    self.dateLabel.text = party.date;
    self.locationLabel.text = party. location;
    self.typeLabel.text = party.type;
    self.instructionsLabel.text = party.instructions;
    self.priceLabel.text = party.price;
    self.imageFileLabel.file = party.imageFile;
    
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
