//
//  JobEditItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 09/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "JobEditItem.h"

@interface JobEditItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation JobEditItem
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

- (void)setBasicItem:(LabelXibSectionItem *)basicItem
{
    [self.groupItem addItem:basicItem elseRemoveItem:_basicItem];
    
    _basicItem = basicItem;
}

- (void)setContentItem:(LabelXibSectionItem *)contentItem
{
    [self.groupItem addItem:contentItem elseRemoveItem:_contentItem];
    
    _contentItem = contentItem;
}


- (void)setPositionItem:(LabelFieldXibCellItem *)positionItem
{
    [self.basicItem addItem:positionItem elseRemoveItem:_positionItem];
    
    _positionItem = positionItem;
}

- (void)setCityItem:(LabelFieldXibCellItem *)cityItem
{
    [self.basicItem addItem:cityItem elseRemoveItem:_cityItem];
    
    _cityItem = cityItem;
}

- (void)setCompanyItem:(LabelFieldXibCellItem *)companyItem
{
    [self.contentItem addItem:companyItem elseRemoveItem:_companyItem];
    
    _companyItem = companyItem;
}

@end





