//
//  AnnonDetailViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Annon.h"
#import "GADBannerView.h"


@interface AnnonDetailViewController : UIViewController{
    GADBannerView *bannerView_;
}

@property(strong,nonatomic)IBOutlet UIScrollView *scroller;

@property(weak,nonatomic)IBOutlet PFImageView *imageFileLabel;

@property(weak,nonatomic)IBOutlet UILabel *titleLabel;
@property(weak,nonatomic)IBOutlet UILabel *bodyLabel;
@property(weak,nonatomic)IBOutlet UILabel *postedByLabel;
@property(weak,nonatomic)IBOutlet UILabel *dateLabel;



@property(strong,nonatomic)Annon *annon;

-(IBAction)enlagePicture:(id)sender;

@end
