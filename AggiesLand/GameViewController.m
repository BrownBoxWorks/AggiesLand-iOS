//
//  GameViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/29/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "GameViewController.h"
#import "GameCustomCell.h"

@interface GameViewController ()


@end

@implementation GameViewController

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

}


-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"GameSchedule"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    
    [query orderByDescending:@"createdAt"];
    
    return query;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *CellIdentifier = @"GameCell";
    GameCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell){
        cell = [[GameCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *tourNameLabel =[object objectForKey:@"TourName"];
    NSString *LocationLabel =[object objectForKey:@"Location"];
    NSString *priceLabel =[object objectForKey:@"Price"];
    NSString *dateLabel = [object objectForKey:@"Date"];
    NSString *prizeLabel =[object objectForKey:@"CashPrize"];
    
    
    [cell.name setText:[NSString stringWithFormat:@"%@",tourNameLabel]];
    [cell.location setText:[NSString stringWithFormat:@"%@", LocationLabel]];
    [cell.price setText:[NSString stringWithFormat:@"Entry Fee $%@", priceLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];
    [cell.cashPrize setText:[NSString stringWithFormat:@"Prize $%@",prizeLabel]];
    
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

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
