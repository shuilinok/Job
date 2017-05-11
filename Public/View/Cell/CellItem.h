//
//  CellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GroupItem.h"


@interface CellItem : NSObject <GroupItem>

@property (assign, nonatomic) CGFloat height;

@property (assign, nonatomic) BOOL hidden;

//返回UITableViewCell,参数3个，CellItem，UITableView，NSIndexPath
@property (strong, nonatomic) MCProtocolCommand *buildCommand;

@end


@interface SectionItem : NSObject <GroupItem>

@property (assign, nonatomic) CGFloat headerHeight;

//返回UIView，参数3个，SectionItem,UITableView,@(section)
@property (strong, nonatomic) MCProtocolCommand *buildHeaderCommand;

@end




@interface LabelFieldCellItem : CellItem

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *contentTip;//编辑框中的提示

@end


@interface LabelSectionItem : SectionItem

@property (strong, nonatomic) NSString *title;

@end

