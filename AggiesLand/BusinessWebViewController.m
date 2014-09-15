//
//  BusinessWebViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/15/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "BusinessWebViewController.h"
#import "SWRevealViewController.h"

@interface BusinessWebViewController ()

@end

@implementation BusinessWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //Menu View Controller
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.aggiesland.com/#!business/c21b7"]]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
