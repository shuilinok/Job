//
//  JobEditItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 09/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KindCellItem.h"

@interface JobEditItem : NSObject <GroupItem>

@property (strong, nonatomic) LabelSectionItem *basicItem;

@property (strong, nonatomic) LabelSectionItem *contentItem;

@property (strong, nonatomic) LabelFieldCellItem *positionItem;

@property (strong, nonatomic) LabelFieldCellItem *cityItem;

@property (strong, nonatomic) LabelFieldCellItem *companyItem;

@property (strong, nonatomic) LabelFieldCellItem *addressItem;

@end





