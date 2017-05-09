//
//  LabelFieldCell.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellItem.h"

@interface LabelFieldCellItem : CellItem

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *contentTip;//编辑框中的提示

@end


//标题：编辑框
@interface LabelFieldCell : UITableViewCell

@property (strong, nonatomic) LabelFieldCellItem *item;

@end
