//
//  KindCellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "KindCellItem.h"

@interface LabelFieldCellItem ()
@end

@implementation LabelFieldCellItem
@dynamic cell;

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        self.height = 50;
    }
    
    return self;
}

- (void)setCell:(LabelFieldCell *)cell
{
    [super setCell:cell];
    
    cell.fieldTextChangedCommand = [MCProtocolCommand command:self selector:@selector(fieldTextChanged:)];
    cell.nameLabel.text = self.name;
    cell.contentField.placeholder = self.contentTip;
    cell.contentField.text = self.content;
    
}

- (id)fieldTextChanged:(NSString *)text
{
    self.content = text;
    
    return nil;
}


@end


@interface LabelSectionItem ()

@end

@implementation LabelSectionItem
@dynamic headerView;

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        self.headerHeight = 40;
    }
    
    return self;
}

- (void)setHeaderView:(LabelSectionHeaderView *)headerView
{
    [super setHeaderView:headerView];

    headerView.label.text = self.title;
}
@end
