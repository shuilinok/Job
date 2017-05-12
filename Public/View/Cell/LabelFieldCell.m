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
    
    [self.contentField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)textFieldDidChange:(id)sender
{
    [self.fieldTextChangedCommand execute:1,self.contentField.text];
}

@end
