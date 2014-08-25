//
//  PartyDetailViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Party.h"
#import "GADBannerView.h"

@interface PartyDetailViewController : UIViewController{
    GADBannerView *bannerView_;
}

@property(weak,nonatomic)IBOutlet UILabel *nameLabel;
@property(weak,nonatomic)IBOutlet UILabel *dateLabel;
@property(weak,nonatomic)IBOutlet UILabel *typeLabel;
@property(weak,nonatomic)IBOutlet UILabel *locationLabel;
@property(weak,nonatomic)IBOutlet UILabel *priceLabel;
@property(weak,nonatomic)IBOutlet UILabel *instructionsLabel;

@property(weak,nonatomic)IBOutlet PFImageView *imageFileLabel;

@property(strong,nonatomic)IBOutlet UIScrollView *scroller;


@property(strong,nonatomic) Party *party;

@end
