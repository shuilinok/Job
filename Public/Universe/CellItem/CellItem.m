//
//  CellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "CellItem.h"


@interface CellItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation CellItem

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        GroupItem *groupItem = [[GroupItem alloc] init];
        
        self.groupItem = groupItem;
    }
    
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if([self.groupItem respondsToSelector:aSelector])
    {
        return self.groupItem;
    }
    
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //...
    return nil;
}

@end


@interface SectionItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation SectionItem
- (instancetype)init
{
    self = [super init];
    if(self)
    {
        GroupItem *groupItem = [[GroupItem alloc] init];
        
        self.groupItem = groupItem;
    }
    
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if([self.groupItem respondsToSelector:aSelector])
    {
        return self.groupItem;
    }
    
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //...
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    //...
    return nil;
}

@end






