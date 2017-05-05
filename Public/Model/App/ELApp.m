//
//  ELApp.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "ELApp.h"
#import "HttpRequestFactory.h"

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
    return [HttpRequestFactory sharedFactory];
}

@end
