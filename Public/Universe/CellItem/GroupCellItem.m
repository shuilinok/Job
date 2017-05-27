//
//  GroupCellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 27/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "GroupCellItem.h"

@interface GroupCellItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation GroupCellItem

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


@end


@interface GroupSectionItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation GroupSectionItem
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

@end
