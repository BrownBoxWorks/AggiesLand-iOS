//
//  CampusDetailsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CampusEvents.h"
#import "GADBannerView.h"

@interface CampusDetailsViewController : UIViewController{
    GADBannerView *bannerView_;
    
}

@property(weak,nonatomic)IBOutlet UILabel *nameLabel;
@property(weak,nonatomic)IBOutlet UILabel *dateLabel;
@property(weak,nonatomic)IBOutlet UILabel *locationLabel;
@property(weak,nonatomic)IBOutlet UILabel *instructionsLabel;
@property(weak,nonatomic)IBOutlet UILabel *priceLabel;

@property(weak,nonatomic)IBOutlet PFImageView *imageFileLabel;

@property(strong,nonatomic)IBOutlet UIScrollView *scroller;


@property(strong,nonatomic)CampusEvents *campus;

@end
