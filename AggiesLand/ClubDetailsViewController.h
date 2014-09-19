//
//  ClubDetailsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 1/10/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Clubs.h"

@interface ClubDetailsViewController : UIViewController




@property(weak,nonatomic)IBOutlet UILabel *nameLabel;
@property(weak,nonatomic)IBOutlet UILabel *dateLabel;
@property(weak,nonatomic)IBOutlet UILabel *clubNameLabel;
@property(weak,nonatomic)IBOutlet UILabel *locationLabel;
@property(weak,nonatomic)IBOutlet UILabel *priceLabel;
@property(weak,nonatomic)IBOutlet UILabel *instructionsLabel;

@property(strong,nonatomic)IBOutlet UIScrollView *scroller;

@property(weak,nonatomic)IBOutlet PFImageView *imageFileLabel;


@property(strong,nonatomic) Clubs *clubs;

@end
