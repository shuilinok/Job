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

//返回UITableViewCell，参数CellItem,UITableView,NSIndexPath
@property (strong, nonatomic) MCProtocolCommand *getCellCommand;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface SectionItem : NSObject <GroupItem>

@property (assign, nonatomic) CGFloat headerHeight;

//返回UIView，参数SectionItem,UITableView,@(section)
@property (strong, nonatomic) MCProtocolCommand *getHeaderCommand;

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;

@end
