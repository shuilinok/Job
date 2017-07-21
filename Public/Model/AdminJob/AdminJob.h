//
//  AdminJob.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AdminJob;

@protocol AdminJobAddPolicy <NSObject>

@property (weak, nonatomic) AdminJob *job;

- (void)add:(ResultCallback)callback;

@end

@interface AdminJobNormalAddPolicy : NSObject <AdminJobAddPolicy>

@property (weak, nonatomic) AdminJob *job;

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NSString *company;

@property (strong, nonatomic) NSString *city;

@end


@interface AdminJob : NSObject

@property (strong, nonatomic) NSString *ID;

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NSString *desc;

@property (strong, nonatomic) NSString *company;

@property (strong, nonatomic) NSString *salary;

@property (strong, nonatomic) NSString *city;

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) id<AdminJobAddPolicy> addPolicy;

@end
