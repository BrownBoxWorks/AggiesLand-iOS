//
//  HomecomingCustomCell.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>

@interface HomecomingCustomCell : PFTableViewCell

@property(weak,nonatomic)IBOutlet UILabel *date;
@property(weak,nonatomic)IBOutlet UILabel *name;
@property(weak,nonatomic)IBOutlet UILabel *price;


@end
