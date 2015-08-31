//
//  CampusTapViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/30/15.
//  Copyright © 2015 Neegbeah Reeves. All rights reserved.
//

#import "CampusTapViewController.h"
#import "CampusEventsTwoViewController.h"
#import "PartiesTwoViewController.h"

#import "CarbonKit.h"

@interface CampusTapViewController () <CarbonTabSwipeDelegate>{
    CarbonTabSwipeNavigation *tabSwipe;
}

@end

@implementation CampusTapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Campus Events";
    
    
    NSArray *names = @[@"Campus Events", @"Parties/Clubs"];
    UIColor *color = self.navigationController.navigationBar.barTintColor;
    tabSwipe = [[CarbonTabSwipeNavigation alloc] createWithRootViewController:self tabNames:names tintColor:color delegate:self];
    [tabSwipe setIndicatorHeight:2.f]; // default 3.f
    [tabSwipe addShadow];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [tabSwipe setTranslucent:NO]; // remove translucent
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [tabSwipe setTranslucent:YES]; // add translucent
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Carbon Tab Swipe Delegate
// required
- (UIViewController *)tabSwipeNavigation:(CarbonTabSwipeNavigation *)tabSwipe viewControllerAtIndex:(NSUInteger)index {
    
    if (index == 0) {
        CampusEventsTwoViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CampusEventsViewController"];
        return viewController;
    } else {
        PartiesTwoViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PartiesViewController"];
        return viewController;
    }
}

// optional
- (void)tabSwipeNavigation:(CarbonTabSwipeNavigation *)tabSwipe didMoveAtIndex:(NSInteger)index {
    NSLog(@"Current tab: %d", (int)index);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
