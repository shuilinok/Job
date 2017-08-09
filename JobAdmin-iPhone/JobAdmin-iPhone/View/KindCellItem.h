//
//  KindCellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellItem.h"

@interface LabelFieldCellItem : CellItem

@property (strong, nonatomic) NSString *identifier;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *contentTip;//编辑框中的提示

@end


@interface LabelSectionItem : SectionItem

@property (strong, nonatomic) NSString *headerNibName;

@property (strong, nonatomic) NSString *footerNibName;

@property (strong, nonatomic) NSString *header;

@property (strong, nonatomic) NSString *footer;

@end


