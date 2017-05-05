//
//  ELApp.h
//  Job-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServerRequestFactory.h"

@interface ELApp : NSObject

+ (instancetype)sharedApp;

/* 服务端请求的工厂 */
+ (id<ServerRequestFactory>)serverRequestFactory;

@end
