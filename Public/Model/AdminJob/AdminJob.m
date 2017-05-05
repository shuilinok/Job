//
//  AdminJob.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "AdminJob.h"

@implementation AdminJob

- (void)add:(ResultCallback)callback
{
    id<JobAddRequest> addRequest = [[ELApp serverRequestFactory] jobAddRequest];
    
    addRequest.title = self.title;
    addRequest.city = self.city;
    addRequest.company = self.company;
    
    [addRequest send:^(id data, NSError *error) {
       
        callback(error);
    }];
}

@end
