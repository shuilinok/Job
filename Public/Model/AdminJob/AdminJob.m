//
//  AdminJob.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "AdminJob.h"

@implementation AdminJobNormalAddPolicy

- (void)add:(ResultCallback)callback
{
    id<JobAddRequest> addRequest = [[ELApp serverRequestFactory] jobAddRequest];
    
    addRequest.title = self.title;
    addRequest.city = self.city;
    addRequest.company = self.company;
    
    [addRequest send:^(id data, NSError *error) {
        
        if(error.code == noErr)
        {
            self.job.title = self.title;
            self.job.city = self.city;
        }
        
        callback(error);
    }];
}

@end


@implementation AdminJob

- (void)setAddPolicy:(id<AdminJobAddPolicy>)addPolicy
{
    _addPolicy = addPolicy;
    
    addPolicy.job = self;
}
@end
