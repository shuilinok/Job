//
//  LabelFieldCell.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "LabelFieldCell.h"


@interface LabelFieldCell ()

@end


@implementation LabelFieldCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.nameLabel.adjustsFontSizeToFitWidth = YES;
    
    [self.contentField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)textFieldDidChange:(id)sender
{
    self.item.content = self.contentField.text;
}

- (void)setItem:(LabelFieldCellItem *)item
{
    _item = item;
    
    self.nameLabel.text = item.name;
    self.contentField.text = item.content;
    self.contentField.placeholder = item.contentTip;
}

@end
