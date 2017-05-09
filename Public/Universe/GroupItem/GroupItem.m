//
//  GroupItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "GroupItem.h"

@interface GroupItem ()

@property (strong, nonatomic) NSMutableArray *items;

@end

@implementation GroupItem

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        self.items = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addItem:(id<GroupItem>)item
{
    if(item && ![self.items containsObject:item])
    {
        [self.items addObject:item];
        item.parentItem = self;
    }
}

- (void)removeItem:(id<GroupItem>)item
{
    if(item && [self.items containsObject:item])
    {
        [self.items removeObject:item];
        item.parentItem = nil;
    }
}

- (BOOL)containItem:(id<GroupItem>)item
{
    if(item)
    {
        return [self.items containsObject:item];
    }
    
    return NO;
}

- (NSUInteger)itemCount
{
    return [self.items count];
}

- (id<GroupItem>)itemAtIndex:(NSUInteger)index
{
    if(index < [self itemCount])
    {
        return [self.items objectAtIndex:index];
    }
    
    return nil;
}

- (void)addItem:(id<GroupItem>)item elseRemoveItem:(id<GroupItem>)oldItem
{
    if(item && ![self containItem:item])
    {
        [self addItem:item];
    }
    else if(item == nil)
    {
        [self removeItem:oldItem];
    }
}
@end
