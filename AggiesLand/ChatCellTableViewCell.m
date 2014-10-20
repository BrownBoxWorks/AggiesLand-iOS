//
//  ChatCellTableViewCell.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/19/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "ChatCellTableViewCell.h"

@implementation ChatCellTableViewCell

@synthesize user,textLabel,message;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
