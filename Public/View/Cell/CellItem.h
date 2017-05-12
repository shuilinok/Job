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

- (UITableViewCell *)buildCellAtIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView;

@end


@interface SectionItem : NSObject <GroupItem>

@property (assign, nonatomic) CGFloat headerHeight;

- (UIView *)buildHeaderAtSection:(NSUInteger)section tableView:(UITableView *)tableView;

@end



