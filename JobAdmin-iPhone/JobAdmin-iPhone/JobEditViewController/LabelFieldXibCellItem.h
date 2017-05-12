//
//  LabelFieldXibCellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KindCellItem.h"
#import "LabelFieldCell.h"

@interface LabelFieldXibCellItem : LabelFieldCellItem

@property (strong, nonatomic) NSString *cellIdentifier;

@property (weak, readonly, nonatomic) LabelFieldCell *cell;

@end
