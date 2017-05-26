//
//  CellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface CellItem : NSObject

@property (strong, nonatomic) NSString *cellIdentifier;

@property (assign, nonatomic) CGFloat height;

@property (assign, nonatomic) BOOL hidden;

@property (weak, nonatomic) UITableViewCell *cell;

- (UITableViewCell *)buildCellAtIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView;

@end


@protocol SectionItem <NSObject>

@property (assign, nonatomic) CGFloat headerHeight;

@property (weak, nonatomic) UIView *headerView;

- (UIView *)buildHeaderAtSection:(NSUInteger)section tableView:(UITableView *)tableView;

@end


@interface SectionItem : NSObject <SectionItem>

@property (assign, nonatomic) CGFloat headerHeight;

@property (weak, nonatomic) UIView *headerView;

- (UIView *)buildHeaderAtSection:(NSUInteger)section tableView:(UITableView *)tableView;

@end

