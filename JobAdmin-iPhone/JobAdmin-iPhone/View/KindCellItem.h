//
//  KindCellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellItem.h"
#import "EditItem.h"
#import "GroupItem.h"
#import "LabelFieldCell.h"
#import "LabelSectionHeaderView.h"

@interface LabelFieldCellItem : CellItem <LabelFieldEditItem, GroupItem>

@property (weak, nonatomic) LabelFieldCell *cell;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *contentTip;//编辑框中的提示

@end


@interface LabelSectionItem : SectionItem <LabelEditItem, GroupItem>

@property (weak, nonatomic) LabelSectionHeaderView *headerView;

@property (strong, nonatomic) NSString *title;

@end


