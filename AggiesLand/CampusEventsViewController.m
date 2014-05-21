//
//  CampusEventsViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/29/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "CampusEventsViewController.h"
#import "CampusCustomCell.h"
#import "CampusDetailsViewController.h"
#import "CampusEvents.h"

@interface CampusEventsViewController ()


@end

@implementation CampusEventsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"CampusEvents"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    
    [query orderByDescending:@"createdAt"];
    
    return query;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    

}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *CellIdentifier = @"CampusCell";
    CampusCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell){
        cell = [[CampusCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *eventNameLabel =[object objectForKey:@"EventName"];
    NSString *LocationLabel =[object objectForKey:@"Location"];
    NSString *priceLabel =[object objectForKey:@"Price"];
    NSString *dateLabel = [object objectForKey:@"Date"];
    NSString *inlabel = [object objectForKey:@"AddInstructions"];
    
    PFFile *thumbnail =[object objectForKey:@"imageFile"];
    cell.imageViewFile.image = [UIImage imageNamed:@"placeholder.png"];
    cell.imageViewFile.file = thumbnail;
    [cell.imageViewFile loadInBackground];
    
    [cell.name setText:[NSString stringWithFormat:@"%@",eventNameLabel]];
    [cell.location setText:[NSString stringWithFormat:@"%@", LocationLabel]];
    [cell.price setText:[NSString stringWithFormat:@"$%@", priceLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];
    [cell.instructions setText:[NSString stringWithFormat:@"%@", inlabel]];
    
    
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    // Configure cell
    
    // cell.textLabel.text = [object objectForKey:@"EventName"];
    //  cell.detailTextLabel.text = [object objectForKey:@"Location"];
    
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showCampusDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        CampusDetailsViewController *destViewController = segue.destinationViewController;
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
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

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
