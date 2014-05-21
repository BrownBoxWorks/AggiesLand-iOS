//
//  Party.h
//  AggiesLand
//
//  Created by Neegbeah Reeves on 10/20/13.
//  Copyright (c) 2013 Neegbeah Reeves. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Party : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *type;
@property (weak, nonatomic) NSString *location;
@property (weak, nonatomic) NSString *price;
@property (weak, nonatomic) NSString *date;
@property (weak, nonatomic) NSString *instructions;
@property (weak, nonatomic) PFFile *imageFile;

@end
