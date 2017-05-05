//
//  AdminJob.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdminJob : NSObject

@property (strong, nonatomic) NSString *ID;

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NSString *desc;

@property (strong, nonatomic) NSString *company;

@property (strong, nonatomic) NSString *salary;

@property (strong, nonatomic) NSString *city;

@property (strong, nonatomic) NSString *address;

- (void)add:(ResultCallback)callback;

@end
