//
//  BusinessDetailViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/31/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Business.h"
#import <Parse/Parse.h>

@interface BusinessDetailViewController : UIViewController

@property (weak,nonatomic) IBOutlet UIWebView*urlLabel;

@property (strong,nonatomic)Business*bus;

@end
