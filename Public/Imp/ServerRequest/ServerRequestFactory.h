//
//  ServerRequestFactory.h
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JobAddRequest.h"

//
@protocol ServerRequestFactory <NSObject>

- (id<JobAddRequest>)jobAddRequest;

@end
