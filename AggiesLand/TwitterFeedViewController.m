//
//  TwitterFeedViewController.m
//  
//
//  Created by Neegbeah Reeves on 7/16/15.
//
//

#import "TwitterFeedViewController.h"
#import <TwitterKit/TwitterKit.h>

@implementation TwitterFeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.title = @"#NCAT";
    
    [[Twitter sharedInstance] logInGuestWithCompletion:^(TWTRGuestSession *guestSession, NSError *error) {
        if (guestSession) {
            TWTRAPIClient *APIClient = [[Twitter sharedInstance] APIClient];
            TWTRSearchTimelineDataSource *searchTimelineDataSource = [[TWTRSearchTimelineDataSource alloc] initWithSearchQuery:@"#NCAT" APIClient:APIClient];
            self.dataSource = searchTimelineDataSource;
        } else {
            NSLog(@"error: %@", [error localizedDescription]);
        }
    }];
}

@end
