//
//  HomecomingDetailViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Homecoming.h"

@interface HomecomingDetailViewController : UIViewController

@property(weak,nonatomic)IBOutlet UILabel *nameLabel;
@property(weak,nonatomic)IBOutlet UILabel *dateLabel;
@property(weak,nonatomic)IBOutlet UILabel *sgLabel;
@property(weak,nonatomic)IBOutlet UILabel *hostLabel; // Not Neccessary but optional
@property(weak,nonatomic)IBOutlet UILabel *priceLabel;
@property(weak,nonatomic)IBOutlet UILabel *detailsLabel;
@property(weak,nonatomic)IBOutlet UILabel *locationLabel;

@property(strong,nonatomic)Homecoming *homecoming;


@end
