//
//  HomecomingViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "HomecomingViewController.h"
#import "HomecomingCustomCell.h"
#import "Homecoming.h"
#import "HomecomingDetailViewController.h"

@interface HomecomingViewController ()

@end

@implementation HomecomingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"HomecommingEvent"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    
    [query orderByDescending:@"createdAt"];
    
    return query;
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *CellIdentifier = @"Cell";
    HomecomingCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell){
        cell = [[HomecomingCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *eventNameLabel =[object objectForKey:@"EventName"];
    NSString *priceLabel =[object objectForKey:@"Price"];
    NSString *dateLabel = [object objectForKey:@"Date"];

    
    [cell.name setText:[NSString stringWithFormat:@"%@",eventNameLabel]];
    [cell.price setText:[NSString stringWithFormat:@"%@", priceLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];

    
    return cell;
}

// Pushing View Controller to Detail View Controller 
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showHomecomingDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        HomecomingDetailViewController *destViewController = segue.destinationViewController;
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
        Homecoming *homecoming = [[Homecoming alloc] init];
        homecoming.name = [object objectForKey:@"EventName"];
        homecoming.date = [object objectForKey:@"Date"];
        homecoming.details = [object objectForKey:@"Details"];
        homecoming.location =[object objectForKey:@"Location"];
        homecoming.price = [object objectForKey:@"Price"];
        homecoming.sg = [object objectForKey:@"GuestName"];
        homecoming.host = [object objectForKey:@"HostName"];
        destViewController.homecoming = homecoming;
        
    }
}
@end
