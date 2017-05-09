//
//  LabelSectionHeaderView.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellItem.h"

@interface LabelSectionItem : SectionItem

@property (strong, nonatomic) NSString *title;

@end


//纯文本
@interface LabelSectionHeaderView : UIView

@property (strong, nonatomic) LabelSectionItem *item;

@end
