//
//  GroupItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>

//组合
@protocol GroupItem <NSObject>

@optional

@property (weak, nonatomic) id<GroupItem> parentItem;

- (void)addItem:(id<GroupItem>)item;

- (void)removeItem:(id<GroupItem>)item;

- (BOOL)containItem:(id<GroupItem>)item;

- (NSUInteger)itemCount;

- (id<GroupItem>)itemAtIndex:(NSUInteger)index;

- (void)addItem:(id<GroupItem>)item elseRemoveItem:(id<GroupItem>)oldItem;

@end


@interface GroupItem : NSObject <GroupItem>

@property (weak, nonatomic) id<GroupItem> parentItem;

@end
