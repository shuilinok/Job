//
//  MORequestManager.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "MORequestManager.h"

@implementation MORequestManager

+ (instancetype)sharedManager
{
    static dispatch_once_t once;
    static MORequestManager *instance;
    dispatch_once(&once, ^{
        instance = [[MORequestManager alloc] init];
    });
    
    return instance;
}

@end
