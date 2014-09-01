//
//  BusinessDetailViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/31/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "BusinessDetailViewController.h"

@interface BusinessDetailViewController ()

@end

@implementation BusinessDetailViewController
@synthesize bus,urlLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.urlLabel.text = bus.site;
    PFObject *object = [[PFObject alloc]init];
    [urlLabel loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[object objectForKey:@"URL"]]]];
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
