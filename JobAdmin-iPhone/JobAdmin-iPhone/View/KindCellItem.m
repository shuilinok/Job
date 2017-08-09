//
//  KindCellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "KindCellItem.h"
#import "LabelFieldCell.h"
#import "LabelSectionHeaderView.h"

@interface LabelFieldCellItem ()
@end

@implementation LabelFieldCellItem

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        
    }
    
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LabelFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:self.identifier forIndexPath:indexPath];
    
    cell.item = self;
    
    return cell;
}

@end


@interface LabelSectionItem ()

@property (weak, nonatomic) LabelSectionHeaderView *headerView;

@end

@implementation LabelSectionItem

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        
    }
    
    return self;
}

- (void)setHeaderView:(LabelSectionHeaderView *)headerView
{
    _headerView = headerView;
    
    _headerView.label.text = self.header;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    LabelSectionHeaderView *v = [[[NSBundle mainBundle] loadNibNamed:self.headerNibName owner:nil options:nil] lastObject];
    self.headerView = v;
    
    return v;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
@end
