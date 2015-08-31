//
//  CampusEventsTwoViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/29/15.
//  Copyright © 2015 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "UIScrollView+EmptyDataSet.h"


@interface CampusEventsTwoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    NSArray *array;
}

@property (strong,nonatomic)IBOutlet UITableView *tableView;


@end
