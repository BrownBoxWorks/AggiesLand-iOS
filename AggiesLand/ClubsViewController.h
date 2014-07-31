//
//  ClubsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 1/10/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>
#import <UIKit/UIKit.h>
#import "UIScrollView+EmptyDataSet.h"

@interface ClubsViewController : PFQueryTableViewController <DZNEmptyDataSetDelegate,DZNEmptyDataSetSource>

@property (weak,nonatomic )IBOutlet UIBarButtonItem *sidebarButton;

@end
