//
//  MORequestFactory.h
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DatabaseRequestFactory.h"

@interface MORequestFactory : NSObject <DatabaseRequestFactory>

+ (instancetype)sharedFactory;

@end
