//
//  PartiesTwoViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/30/15.
//  Copyright © 2015 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "UIScrollView+EmptyDataSet.h"

@interface PartiesTwoViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>{
    NSArray *array;
}

@property (strong,nonatomic)IBOutlet UITableView *tableView;

@end
