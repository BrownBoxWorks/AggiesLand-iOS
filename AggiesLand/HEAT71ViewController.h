//
//  HEAT71ViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 9/8/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"


@interface HEAT71ViewController : UIViewController <MBProgressHUDDelegate>
{
    IBOutlet UIWebView *seventyone;
    
    MBProgressHUD *HUD;
}
@end
