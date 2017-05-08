//
//  JobAddRequest.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "JobAddRequest.h"
#import "HttpRequestFactory.h"

@implementation JobAddHttpRequest

- (void)send:(DataResultCallback)callback
{
    NSString *url = [NSString stringWithFormat:@"%@://%@/%@/%@",kHttpScheme,kHttpHost,kHttpServicePath,@"job/add_job.php"];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:kNetworkTimeOutInterval];
    [request setHTTPMethod:@"POST"];
    
    NSString *param = [NSString stringWithFormat:@"title=%@&city=%@&company=%@", self.title, self.city,self.company];
    
    // 将字符串转换成数据
    request.HTTPBody = [param dataUsingEncoding:NSUTF8StringEncoding];
    
    [self.factory sendRequest:request response:^(id data, NSError *error) {
        
        NSError *err = nil;
//        JobInfo *resultInfo = nil;
//        
//        if(error.code == noErr)
//        {
//            NSDictionary *resultDict = data;
//            NSInteger code = [[resultDict objectForKey:@"code"] integerValue];
//            NSString *msg = [resultDict objectForKey:@"message"];
//            err = [NSError errorWithCode:code xtmsg:msg];
//            
//            NSDictionary *dict = [resultDict objectForKey:@"job"];
//            resultInfo = [[JobInfo alloc] init];
//            [resultInfo setWithDict:dict];
//        }
//        else
//        {
//            err = [NSError errorWithCode:error.code xtmsg:@"请求增加失败"];
//        }
        
        mainDataResultCallback(callback, nil, err);
        
    }];
}
@end
