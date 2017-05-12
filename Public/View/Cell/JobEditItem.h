//
//  JobEditItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 09/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroupItem.h"
#import "LabelFieldXibCellItem.h"
#import "LabelXibSectionItem.h"

@interface JobEditItem : NSObject <GroupItem>

@property (strong, nonatomic) LabelXibSectionItem *basicItem;

@property (strong, nonatomic) LabelXibSectionItem *contentItem;


@property (strong, nonatomic) LabelFieldXibCellItem *positionItem;

@property (strong, nonatomic) LabelFieldXibCellItem *cityItem;

@property (strong, nonatomic) LabelFieldXibCellItem *companyItem;

@end







