//
//  LabelXibSectionItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KindCellItem.h"
#import "LabelSectionHeaderView.h"

@interface LabelXibSectionItem : LabelSectionItem

@property (strong, nonatomic) NSString *xibName;

@property (weak, readonly, nonatomic) LabelSectionHeaderView *headerView;

@end
