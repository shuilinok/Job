//
//  LabelFieldXibCellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellItem.h"
#import "LabelFieldCell.h"

@interface LabelFieldXibCellItem : CellItem

@property (strong, nonatomic) NSString *cellIdentifier;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *contentTip;//编辑框中的提示

@property (weak, readonly, nonatomic) LabelFieldCell *cell;

@end
