//
//  CellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupItem.h"

@interface CellItem : NSObject <GroupItem>

@property (assign, nonatomic) CGFloat height;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end



@interface SectionItem : NSObject <GroupItem>

@property (assign, nonatomic) CGFloat headerHeight;

@property (assign, nonatomic) CGFloat footerHeight;

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;

@end

