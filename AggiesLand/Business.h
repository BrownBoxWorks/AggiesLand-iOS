//
//  Business.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 8/31/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Business : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *bio;
@property (strong,nonatomic) NSString *site;
@property (strong,nonatomic) PFFile *file;

@end
