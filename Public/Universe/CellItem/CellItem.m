//
//  CellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "CellItem.h"

#define kCellItemAssignCellNotification     @"CellItemAssignCellNotification"
#define kCell                               @"Cell"

@implementation CellItem

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(assignCellNotification:) name:kCellItemAssignCellNotification object:nil];
    }
    
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kCellItemAssignCellNotification object:nil];
}

- (void)setCell:(UITableViewCell *)cell
{
    _cell = cell;
    
    if(cell)
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:kCellItemAssignCellNotification object:self userInfo:@{kCell:cell}];
    }
}

- (void)assignCellNotification:(NSNotification *)notification
{
    if(notification.object != self && [notification.userInfo objectForKey:kCell] == self.cell)//别的cellitem对象关联了这个cell
    {
        self.cell = nil;
    }
}


@end


@implementation SectionItem

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        
    }
    
    return self;
}

@end






