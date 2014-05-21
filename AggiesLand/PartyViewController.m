//
//  PartyViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/24/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import "PGTableViewWithEmptyView.h"
#import "PartyViewController.h"
#import "PartyCustomCell.h"
#import "Party.h"
#import "PartyDetailViewController.h"
#import "SWRevealViewController.h"

@interface PartyViewController ()


@end


@implementation PartyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"Parties"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    
    [query orderByDescending:@"createdAt"];
    
    return query;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    
    
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
    PartyCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 
    if(!cell){
        cell = [[PartyCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    PFFile *file = [object objectForKey:@"Image"];
    PFImageView *imageView = (PFImageView *)[cell viewWithTag:100];
    imageView.image = [UIImage imageNamed:@"Icons_AL.png"];
    imageView.file =file;
    [imageView loadInBackground];
    
    NSString *eventNameLabel =[object objectForKey:@"EventName"];
    NSString *eventTypeLabel =[object objectForKey:@"EventType"];
    NSString *LocationLabel =[object objectForKey:@"Location"];
    NSString *priceLabel =[object objectForKey:@"Price"];
    NSString *dateLabel = [object objectForKey:@"Date"];
    NSString *inlabel = [object objectForKey:@"AddInstructions"];
    
    PFFile *thumbnail =[object objectForKey:@"imageFile"];
    cell.imageViewFile.image = [UIImage imageNamed:@"placeholder.png"];
    cell.imageViewFile.file = thumbnail;
    [cell.imageViewFile loadInBackground];
    
    [cell.name setText:[NSString stringWithFormat:@"%@",eventNameLabel]];
    [cell.type setText:[NSString stringWithFormat:@"%@", eventTypeLabel]];
    [cell.location setText:[NSString stringWithFormat:@"%@", LocationLabel]];
    [cell.price setText:[NSString stringWithFormat:@"%@", priceLabel]];
    [cell.date setText:[NSString stringWithFormat:@"%@",dateLabel]];
    [cell.instructions setText:[NSString stringWithFormat:@"%@", inlabel]];
    
    
    
  // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    // Configure cell
    
  // cell.textLabel.text = [object objectForKey:@"EventName"];
  //  cell.detailTextLabel.text = [object objectForKey:@"Location"];

    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showPartyDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PartyDetailViewController *destViewController = segue.destinationViewController;
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
        Party *party = [[Party alloc] init];
        party.name = [object objectForKey:@"EventName"];
        party.date = [object objectForKey:@"Date"];
        party.type = [object objectForKey:@"EventType"];
        party.instructions = [object objectForKey:@"AddInstructions"];
        party.location =[object objectForKey:@"Location"];
        party.price = [object objectForKey:@"Price"];
        party.imageFile = [object objectForKey:@"imageFile"];
        destViewController.party = party;
        
    }
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
