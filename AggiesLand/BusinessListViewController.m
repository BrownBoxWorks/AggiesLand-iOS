//
//  BusinessListViewController.m
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/4/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import "BusinessListViewController.h"
#import "Business.h"
#import "BusinessDetailViewController.h"
#import "BusinessCustomCell.h"
#import "SWRevealViewController.h"

@interface BusinessListViewController ()

@end

@implementation BusinessListViewController

/*
-(PFQuery *)queryForTable{
    PFQuery*query =[PFQuery queryWithClassName:@"Business"];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork; // Save Data from Parse Cloud to Device to avoid reconnection from the internet to retrieve data again
    
    [query orderByDescending:@"createdAt"];
    
    return query;
}
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //Menu View Controller
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *CellIdentifier = @"Cell";
    BusinessCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell){
        cell = [[BusinessCustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
 
    PFFile *file = [object objectForKey:@"Image"];
    PFImageView *imageView = (PFImageView *)[cell viewWithTag:100];
    imageView.image = [UIImage imageNamed:@"Icons_AL.png"];
    imageView.file =file;
    [imageView loadInBackground];
 
    NSString *businessNameLabel =[object objectForKey:@"BusinessName"];
    NSString *businessBioLabel =[object objectForKey:@"Bio"];

    
    PFFile *thumbnail =[object objectForKey:@"imageFile"];
    cell.imageView.image = [UIImage imageNamed:@"placeholder.png"];
    cell.imageView.file = thumbnail;
    [cell.imageView loadInBackground];
    
    
    [cell.nameLabel setText:[NSString stringWithFormat:@"%@",businessNameLabel]];
    [cell.bioLabel setText:[NSString stringWithFormat:@"%@", businessBioLabel]];


 
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    // Configure cell
    
    // cell.textLabel.text = [object objectForKey:@"EventName"];
    //  cell.detailTextLabel.text = [object objectForKey:@"Location"];
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showBusinessDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BusinessDetailViewController *destViewController = segue.destinationViewController;
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
        Business *business = [[Business alloc] init];
        business.site = [object objectForKey:@"URL"];

        destViewController.bus = business;
        
    }
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
