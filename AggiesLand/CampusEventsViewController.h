//
//  CampusEventsViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/29/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Parse/Parse.h>
#import "UIScrollView+EmptyDataSet.h"
#import "MBProgressHUD.h"

@interface CampusEventsViewController : PFQueryTableViewController <DZNEmptyDataSetDelegate, DZNEmptyDataSetSource, MBProgressHUDDelegate>{
    MBProgressHUD *HUD;
    
}


@property (weak,nonatomic)IBOutlet UIBarButtonItem *sidebarButton;

@end
