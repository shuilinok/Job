//
//  JobAddRequest.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>

//加入职位请求
@protocol JobAddRequest <NSObject>

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NSString *desc;

@property (strong, nonatomic) NSString *company;

@property (strong, nonatomic) NSString *salary;

@property (strong, nonatomic) NSString *city;

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) NSString *userID;

@property (strong, nonatomic) NSString *userToken;

- (void)send:(DataResultCallback)callback;

@end


@interface JobAddHttpRequest : NSObject <JobAddRequest>

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NSString *desc;

@property (strong, nonatomic) NSString *company;

@property (strong, nonatomic) NSString *salary;

@property (strong, nonatomic) NSString *city;

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) NSString *userID;

@property (strong, nonatomic) NSString *userToken;

@end
