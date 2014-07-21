//
//  REMenuNavigation.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 7/20/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "REMenuNavigation.h"

@interface REMenuNavigation ()


@end

@implementation REMenuNavigation

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _pulldownMenu = [[PulldownMenu alloc] initWithNavigationController:self];
    [self.view insertSubview:pulldownMenu belowSubview:self.navigationBar];
    
    [pulldownMenu insertButton:@"Menu Item 1"];
    [pulldownMenu insertButton:@"Menu Item 2"];
    [pulldownMenu insertButton:@"Menu Item 3"];
    
    pulldownMenu.delegate = self;
    
    [pulldownMenu loadMenu];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
