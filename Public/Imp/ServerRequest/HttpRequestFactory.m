//
//  HttpRequestFactory.m
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "HttpRequestFactory.h"

@interface HttpRequestFactory ()

@property (strong, nonatomic) AFHTTPRequestOperationManager* manager;
@end


@implementation HttpRequestFactory

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static HttpRequestFactory *instance;
    dispatch_once(&once, ^{
        instance = [[HttpRequestFactory alloc] init];
    });
    
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"text/json", @"application/json", nil];
        manager.requestSerializer.timeoutInterval = kNetworkTimeOutInterval;
        
        self.manager = manager;
    }
    
    return self;
}

- (void)sendRequest:(NSMutableURLRequest *)request response:(DataResultCallback)callback
{
    AFHTTPRequestOperation *operation = [self.manager HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        callback(responseObject,nil);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        callback(nil, error);
    }];
    
    [self.manager.operationQueue addOperation:operation];
}

- (id<JobAddRequest>)jobAddRequest
{
    JobAddHttpRequest *request = [[JobAddHttpRequest alloc] init];
    request.factory = self;
    
    return request;
}

@end
