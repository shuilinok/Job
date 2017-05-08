//
//  ELApp.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "ELApp.h"
#import "HttpRequestFactory.h"
#import "MORequestFactory.h"

@implementation ELApp

+ (instancetype)sharedApp
{
    static dispatch_once_t once;
    static ELApp *instance;
    dispatch_once(&once, ^{
        instance = [[ELApp alloc] init];
    });
    
    return instance;
}

/* 服务端请求的工厂 */
+ (id<ServerRequestFactory>)serverRequestFactory
{
    return [HttpRequestFactory sharedInstance];
}

/* 本地数据库请求的工厂 */
+ (id<DatabaseRequestFactory>)dbRequestFactory
{
    return [MORequestFactory sharedInstance];
}

@end
