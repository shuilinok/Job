//
//  HttpRequestFactory.h
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServerRequestFactory.h"
#import "AFHTTPRequestOperationManager.h"

#define kHttpScheme             @"http"
#define kHttpHost               @"www.enjoyloop.com"
#define kHttpServicePath        @"service"

#define kNetworkTimeOutInterval 60

@interface HttpRequestFactory : NSObject <ServerRequestFactory>

+ (instancetype)sharedInstance;

@property (readonly, strong, nonatomic) AFHTTPRequestOperationManager* manager;

//发送请求
- (void)sendRequest:(NSMutableURLRequest *)request response:(DataResultCallback)callback;

@end
