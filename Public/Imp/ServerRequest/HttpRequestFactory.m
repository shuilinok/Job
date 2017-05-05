//
//  HttpRequestFactory.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "HttpRequestFactory.h"

@implementation HttpRequestFactory

+ (instancetype)sharedFactory
{
    static dispatch_once_t once;
    static HttpRequestFactory *instance;
    dispatch_once(&once, ^{
        instance = [[HttpRequestFactory alloc] init];
    });
    
    return instance;
}

- (id<JobAddRequest>)jobAddRequest
{
    return [[JobAddHttpRequest alloc] init];
}

@end
