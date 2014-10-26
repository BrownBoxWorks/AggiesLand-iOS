//
//  ChatCellTableViewCell.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/19/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatCellTableViewCell : UITableViewCell

@property (nonatomic,retain)IBOutlet UILabel *user;
@property (nonatomic,retain)IBOutlet UITextView *textView;
@property (nonatomic,retain)IBOutlet UILabel* time;

@end
