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
