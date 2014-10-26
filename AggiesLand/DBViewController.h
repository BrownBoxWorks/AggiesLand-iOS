//
//  DBViewController.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/19/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "ChatCellTableViewCell.h"

@interface DBViewController : UIViewController <UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate>{
    UITextField *tfEntry;
    
    IBOutlet UITableView *chatTable;
    NSMutableArray *chatData;
    BOOL _reloading;
    NSString *className;
    NSString *userName;
    
}

@property (nonatomic,strong) IBOutlet UITextField *tfEntry;

@property (nonatomic,retain) UITableView *chatTable;
@property (nonatomic,retain) NSArray* chatData;


-(void)loadChatData;


-(void)registerForKeyboardNotifications;
-(void)freeKeyboardNotifications;
-(void) keyboardWasShown:(NSNotification*)aNotification;
-(void) keyboardWillHide:(NSNotification*)aNotification;


@end
