//
//  MORequestFactory.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "MORequestFactory.h"

@implementation MORequestFactory

+ (instancetype)sharedFactory
{
    static dispatch_once_t once;
    static MORequestFactory *instance;
    dispatch_once(&once, ^{
        instance = [[MORequestFactory alloc] init];
    });
    
    return instance;
}

@end
