//
//  KindCellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "KindCellItem.h"

@interface LabelFieldCellItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation LabelFieldCellItem
@dynamic cell;

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        GroupItem *groupItem = [[GroupItem alloc] init];
        
        self.groupItem = groupItem;
        
        self.height = 50;
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

- (UITableViewCell *)buildCellAtIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView
{
    LabelFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    self.cell = cell;
    
    cell.fieldTextChangedCommand = [MCProtocolCommand command:self selector:@selector(fieldTextChanged:)];
    cell.nameLabel.text = self.name;
    cell.contentField.placeholder = self.contentTip;
    cell.contentField.text = self.content;
    
    return cell;
}

- (id)fieldTextChanged:(NSString *)text
{
    self.content = text;
    
    return nil;
}


@end


@interface LabelSectionItem ()
@property (strong, nonatomic) id<GroupItem> groupItem;
@end

@implementation LabelSectionItem

@dynamic headerView;

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        GroupItem *groupItem = [[GroupItem alloc] init];
        
        self.groupItem = groupItem;
        
        self.headerHeight = 40;
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

- (UIView *)buildHeaderAtSection:(NSUInteger)section tableView:(UITableView *)tableView
{
    LabelSectionHeaderView *v = [[[NSBundle mainBundle] loadNibNamed:@"LabelSectionHeaderView" owner:nil options:nil] lastObject];
    self.headerView = v;
    
    v.label.text = self.title;
    
    return v;
}
@end
