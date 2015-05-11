//
//  AnnonDetailViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "Annon.h"
#import "TTTAttributedLabel.h"
#import <ParseUI/ParseUI.h>


@interface AnnonDetailViewController : UIViewController<TTTAttributedLabelDelegate>

@property(strong,nonatomic)IBOutlet UIScrollView *scroller;

@property(weak,nonatomic)IBOutlet PFImageView *imageFileLabel;

@property(nonatomic) TTTAttributedLabel *titleLabel;
@property(weak,nonatomic)IBOutlet UITextView *bodyLabel;
@property(weak,nonatomic)IBOutlet UILabel *postedByLabel;
@property(weak,nonatomic)IBOutlet UILabel *dateLabel;



@property(strong,nonatomic)Annon *annon;

-(IBAction)enlagePicture:(id)sender;

@end
