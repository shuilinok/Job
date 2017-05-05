//
//  HttpRequestManager.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "HttpRequestManager.h"

@implementation HttpRequestManager

+ (instancetype)sharedManager
{
    static dispatch_once_t once;
    static HttpRequestManager *instance;
    dispatch_once(&once, ^{
        instance = [[HttpRequestManager alloc] init];
    });
    
    return instance;
}

@end
