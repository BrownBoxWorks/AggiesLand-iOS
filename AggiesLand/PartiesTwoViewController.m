//
//  PartiesTwoViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/30/15.
//  Copyright © 2015 Neegbeah Reeves. All rights reserved.
//

#import "PartiesTwoViewController.h"
#import "Clubs.h"
#import "ClubCustomCell.h"
#import "ClubDetailsViewController.h"

@interface PartiesTwoViewController ()

@end

@implementation PartiesTwoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) retrieveFromParse {
    PFQuery *query = [PFQuery queryWithClassName:@"Clubs"];
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
    
    self.tableView.emptyDataSetDelegate = self;
    self.tableView.emptyDataSetDelegate =self;
    
    //self.tableView.emptyDataSetSource = self;
    //self.tableView.emptyDataSetDelegate = self;
    
    // A little trick for removing the cell separators
    self.tableView.tableFooterView = [UIView new];
    
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

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    static NSString *CellIdentifier = @"Cell";
    ClubCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell){
        cell = [[ClubCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    PFObject *tempObject = [array objectAtIndex:indexPath.row];

    
    NSString *eventNameLabel =[tempObject objectForKey:@"Title"];
    NSString *clubNameLabel =[tempObject objectForKey:@"ClubName"];
    NSString *LocationLabel =[tempObject objectForKey:@"Address"];
    NSString *priceLabel =[tempObject objectForKey:@"Price"];
    NSString *dateLabel = [tempObject objectForKey:@"Date"];
    NSString *inlabel = [tempObject objectForKey:@"Details"];
    
    PFFile *thumbnail =[tempObject objectForKey:@"imageFile"];
    cell.imageViewFile.image = [UIImage imageNamed:@"placeholder.png"];
    cell.imageViewFile.file = thumbnail;
    [cell.imageViewFile loadInBackground];
    
    
    [cell.name setText:[NSString stringWithFormat:@"%@",eventNameLabel]];
    [cell.clubName setText:[NSString stringWithFormat:@"%@", clubNameLabel]];
    [cell.location setText:[NSString stringWithFormat:@"%@", LocationLabel]];
    [cell.price setText:[NSString stringWithFormat:@"%@", priceLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];
    [cell.instructions setText:[NSString stringWithFormat:@"%@", inlabel]];
    
    
    return cell;
}

#pragma mark - DZEmptyView

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    
    NSString *text = @"No Parties...Yet";
    
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:18.0],
                                 NSForegroundColorAttributeName: [UIColor darkGrayColor]};
    
    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
}


- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    
    NSString *text = @"Come back later. We will notify you when the events are updated... Or check your internet connection.";
    
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



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
