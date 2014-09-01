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

@property (weak,nonatomic) NSString *name;
@property (weak,nonatomic) NSString *bio;
@property (weak,nonatomic) NSString *site;

@end
