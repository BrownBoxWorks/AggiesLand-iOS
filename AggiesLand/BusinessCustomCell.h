//
//  BusinessCustomCell.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/31/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>

@interface BusinessCustomCell : PFTableViewCell

@property (weak,nonatomic) IBOutlet UILabel *nameLabel;
@property (weak,nonatomic) IBOutlet UILabel *bioLabel;
@property (weak,nonatomic) IBOutlet UILabel *linkLabel;
@property (weak,nonatomic) IBOutlet PFImageView *imageView;

@end
