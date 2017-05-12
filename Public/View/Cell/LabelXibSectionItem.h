//
//  LabelXibSectionItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellItem.h"
#import "LabelSectionHeaderView.h"

@interface LabelXibSectionItem : SectionItem

@property (strong, nonatomic) NSString *xibName;

@property (strong, nonatomic) NSString *title;

@property (weak, readonly, nonatomic) LabelSectionHeaderView *headerView;

@end
