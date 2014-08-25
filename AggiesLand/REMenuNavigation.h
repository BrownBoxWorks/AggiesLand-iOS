//
//  REMenuNavigation.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 7/20/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PulldownMenu.h"

@interface REMenuNavigation : UINavigationController <PulldownMenuDelegate>{
    PulldownMenu *menu;
}

@property (nonatomic, retain) PulldownMenu *pulldownMenu;



-(IBAction)toggleMenu:(id)sender;

@end
