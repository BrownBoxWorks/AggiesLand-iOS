//
//  HEAT71WeekendViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface HEAT71WeekendViewController : UIViewController<MBProgressHUDDelegate>
{
    IBOutlet UIWebView *seventyoneweekend;
    MBProgressHUD *HUD;
}

@end
