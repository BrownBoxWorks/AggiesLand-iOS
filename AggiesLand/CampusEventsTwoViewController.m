//
//  CampusEventsTwoViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/29/15.
//  Copyright © 2015 Neegbeah Reeves. All rights reserved.
//

#import "CampusEventsTwoViewController.h"
#import "CampusCustomCell.h"
#import "CampusDetailsViewController.h"
#import "CampusEvents.h"


@interface CampusEventsTwoViewController (){
    UIRefreshControl *refreshControl;
}

@end

@implementation CampusEventsTwoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
/*
-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"CampusEvents"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    
    [query orderByDescending:@"createdAt"];
    
    return query;
}
*/

- (void) retrieveFromParse {
    PFQuery *query = [PFQuery queryWithClassName:@"CampusEvents"];
    //[query whereKey:@"userIdString" equalTo:currentUser.objectId];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            array = [[NSArray alloc] initWithArray:objects];
        }
        [_tableView reloadData];
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // A little trick for removing the cell separators
    self.tableView.tableFooterView = [UIView new];
    
    // Configure Refresh Control
    [refreshControl addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    
    
    [self performSelector:@selector(retrieveFromParse)];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   // return array.count;
    
    return array.count; // Use for empty data set, debug
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CampusCell";
    CampusCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell){
        cell = [[CampusCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    PFObject *tempObject = [array objectAtIndex:indexPath.row];

    NSString *eventNameLabel =[tempObject objectForKey:@"EventName"];
    NSString *LocationLabel =[tempObject objectForKey:@"Location"];
    NSString *priceLabel =[tempObject objectForKey:@"Price"];
    NSString *dateLabel = [tempObject objectForKey:@"Date"];
    NSString *inlabel = [tempObject objectForKey:@"AddInstructions"];
    
    PFFile *thumbnail =[tempObject objectForKey:@"imageFile"];
    cell.imageViewFile.image = [UIImage imageNamed:@"placeholder.png"];
    cell.imageViewFile.file = thumbnail;
    [cell.imageViewFile loadInBackground];
    
    [cell.name setText:[NSString stringWithFormat:@"%@",eventNameLabel]];
    [cell.location setText:[NSString stringWithFormat:@"%@", LocationLabel]];
    [cell.price setText:[NSString stringWithFormat:@"$%@", priceLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];
    [cell.instructions setText:[NSString stringWithFormat:@"%@", inlabel]];
    
  
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showCampusDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        CampusDetailsViewController *destViewController = segue.destinationViewController;
        
        PFObject *object = [array objectAtIndex:indexPath.row];
        CampusEvents *campus = [[CampusEvents alloc] init];
        campus.name = [object objectForKey:@"EventName"];
        campus.date = [object objectForKey:@"Date"];
        campus.instructions = [object objectForKey:@"AddInstructions"];
        campus.location =[object objectForKey:@"Location"];
        campus.price = [object objectForKey:@"Price"];
        campus.imageFile = [object objectForKey:@"imageFile"];
        destViewController.campus = campus;
        
    }
}

/*
 - (void) objectsDidLoad:(NSError *)error
 {
 [super objectsDidLoad:error];
 
 MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
 hud.mode = MBProgressHUDModeIndeterminate;
 hud.labelText = @"Loading";
 [hud hide:YES afterDelay:3.0];
 
 NSLog(@"error: %@", [error localizedDescription]);
 }
 */

#pragma mark - DZEmptyView

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    
    NSString *text = @"No Campus Events...Yet";
    
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:18.0],
                                 NSForegroundColorAttributeName: [UIColor darkGrayColor]};
    
    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
}


- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    
    NSString *text = @"Come back later. We will notify you when the events are updated.";
    
    NSMutableParagraphStyle *paragraph = [NSMutableParagraphStyle new];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    paragraph.alignment = NSTextAlignmentCenter;
    
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:14.0],
                                 NSForegroundColorAttributeName: [UIColor lightGrayColor],
                                 NSParagraphStyleAttributeName: paragraph};
    
    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
}


- (UIColor *)backgroundColorForEmptyDataSet:(UIScrollView *)scrollView {
    
    return [UIColor whiteColor];
}


#pragma mark - DZEmptyView Delegate


- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    
    return YES;
}

- (BOOL)emptyDataSetShouldAllowTouch:(UIScrollView *)scrollView {
    
    return YES;
}

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    
    return YES;
}

- (void)emptyDataSetDidTapView:(UIScrollView *)scrollView {
    
}

- (void)emptyDataSetDidTapButton:(UIScrollView *)scrollView {
    
}



#pragma mark - Status Bar Style Preferences

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
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
