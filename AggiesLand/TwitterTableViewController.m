//
//  TwitterTableViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 4/28/15.
//  Copyright (c) 2015 Neegbeah Reeves. All rights reserved.
//


#import "TwitterTableViewController.h"
#import "STTwitter.h"

@interface TwitterTableViewController (){
    
}
@property (strong,nonatomic) IBOutlet NSMutableArray *twitterFeed;


@end

@implementation TwitterTableViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // STTwitter API
    STTwitterAPI *twitter = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:@"pLgm0CpvgUmeOOHKkhIabQFFL"
                                                            consumerSecret:@"6n7T5PRkLPufSAowtdfY3Ja5kH4HVR9YC6Zh7MRTaXXZmm47Az"];

    
    [twitter verifyCredentialsWithSuccessBlock:^(NSString *bearerToken) {
        
        [twitter getUserTimelineWithScreenName:@"AggieLandz"
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
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
    cell.textLabel.numberOfLines = 4;
    


    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
