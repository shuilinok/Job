//
//  LabelSectionHeaderView.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "LabelSectionHeaderView.h"


@interface LabelSectionHeaderView ()
@property (strong, nonatomic) IBOutlet UILabel *label;
@end

@implementation LabelSectionHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setItem:(LabelSectionItem *)item
{
    _item = item;
    
    self.label.text = item.title;
}

@end
