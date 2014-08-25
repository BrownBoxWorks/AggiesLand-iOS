//
//  Clubs.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 1/10/14.
//  Copyright (c) 2014 Neegbeah Reeves. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Clubs : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *clubName;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *price;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *instructions;
@property (strong, nonatomic) PFFile *file;

@end
