//
//  DBViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/19/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController <UITextFieldDelegate>{
    UITextField *tfEntry;
}

@property (nonatomic,strong) IBOutlet UITextField *tfEntry;

@end
