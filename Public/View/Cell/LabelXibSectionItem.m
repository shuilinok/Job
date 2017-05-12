//
//  LabelXibSectionItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "LabelXibSectionItem.h"

@interface LabelXibSectionItem ()
@property (weak, nonatomic) LabelSectionHeaderView *headerView;
@end

@implementation LabelXibSectionItem

- (UIView *)buildHeaderAtSection:(NSUInteger)section tableView:(UITableView *)tableView
{
    LabelSectionHeaderView *v = [[[NSBundle mainBundle] loadNibNamed:self.xibName owner:nil options:nil] lastObject];
    self.headerView = v;
    
    v.label.text = self.title;
    
    return v;
}

@end
