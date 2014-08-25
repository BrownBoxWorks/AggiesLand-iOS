//
//  GameCustomCell.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/29/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>

@interface GameCustomCell : PFTableViewCell
@property(weak,nonatomic) IBOutlet UILabel*name;
@property(weak,nonatomic) IBOutlet UILabel*location;
@property(weak,nonatomic) IBOutlet UILabel*price;
@property(weak,nonatomic) IBOutlet UILabel*date;
@property(weak,nonatomic) IBOutlet UILabel*cashPrize;

@end
