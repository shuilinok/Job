//
//  JobEditItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 09/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroupItem.h"
#import "EditItem.h"

@interface JobEditItem : NSObject <GroupItem>

@property (strong, nonatomic) id<LabelEditItem, GroupItem> basicItem;

@property (strong, nonatomic) id<LabelEditItem, GroupItem> contentItem;

@property (strong, nonatomic) id<LabelFieldEditItem, GroupItem> positionItem;

@property (strong, nonatomic) id<LabelFieldEditItem, GroupItem> cityItem;

@property (strong, nonatomic) id<LabelFieldEditItem, GroupItem> companyItem;

@end





