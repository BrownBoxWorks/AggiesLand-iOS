//
//  TodayViewController.m
//  AggiesLand Today
//
//  Created by Neegbeah Reeves on 9/15/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#import "STTwitter.h"
#import <CoreLocation/CoreLocation.h>
#import <QuartzCore/QuartzCore.h>

@interface TodayViewController () <NCWidgetProviding,UITableViewDataSource,UITableViewDelegate>{
    NSTimer *tableTimer;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) IBOutlet NSMutableArray *twitterFeed;


@end

@implementation TodayViewController

@synthesize tableView;
@synthesize tableTimer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // STTwitter API
    STTwitterAPI *twitter = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:@"xz9ew8UZ6rz8TW3QBSDYg"
                                                            consumerSecret:@"rm8grg0aIPCUnTpgC5H1NMt4uWYUVXKPqH8brIqD4o"];
    
    [twitter verifyCredentialsWithSuccessBlock:^(NSString *bearerToken) {
        
        [twitter getUserTimelineWithScreenName:@"davidsonccc"
                                  successBlock:^(NSArray *statuses) {
                                      
                                      self.twitterFeed = [NSMutableArray arrayWithArray:statuses];
                                      
                                      [self.tableView reloadData];
                                      
                                  } errorBlock:^(NSError *error) {
                                      
                                      NSLog(@"%@", error.debugDescription);
                                      
                                  }];
        
    } errorBlock:^(NSError *error) {
        
        NSLog(@"%@", error.debugDescription);
        
    }];
}


#pragma mark - Auto Scrolling UITableView Delegate
-(void)autoScroll{
    [tableView setContentOffset:CGPointMake(tableView.contentOffset.x, tableView.contentOffset.y + 44) animated:YES];
    
}

-(void)stopScroll{
    [tableTimer invalidate];
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.twitterFeed.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"CellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    
    NSInteger idx = indexPath.row;
    NSDictionary *t = self.twitterFeed[idx];
    
    cell.textLabel.text = t[@"text"];
    
    tableTimer = [NSTimer scheduledTimerWithTimeInterval:10 // Integer arranges the speed of the auto-scrolling
                                                  target:self
                                                selector:@selector(autoScroll)
                                                userInfo:nil
                                                 repeats:NO];
    
    
    [NSTimer scheduledTimerWithTimeInterval:10 // Integer arranges the duration of the scroll
                                     target:self
                                   selector:@selector(stopScroll)
                                   userInfo:nil
                                    repeats:NO];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:tableView.indexPathForSelectedRow animated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
