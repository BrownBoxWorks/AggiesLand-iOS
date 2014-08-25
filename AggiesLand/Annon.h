//
//  Annon.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Annon : NSObject

@property (strong,nonatomic)NSString *body;
@property (strong,nonatomic)NSString *title;
@property (strong,nonatomic)NSString *postedBy;
@property (strong,nonatomic)NSString *date;
@property (strong,nonatomic)PFFile *imageFile;

@end
