//
//  CampusEventsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/29/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>
#import "UIScrollView+EmptyDataSet.h"

@interface CampusEventsViewController : PFQueryTableViewController <DZNEmptyDataSetDelegate, DZNEmptyDataSetSource>



@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;

@end
