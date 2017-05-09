//
//  LabelFieldCell.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "LabelFieldCell.h"


@implementation LabelFieldCellItem

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LabelFieldCell *cell = (LabelFieldCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    cell.item = self;
    
    return cell;
}

@end


@interface LabelFieldCell ()
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITextField *contentField;
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

- (void)setItem:(LabelFieldCellItem *)item
{
    _item = item;
    
    self.nameLabel.text = item.name;
    self.contentField.placeholder = item.contentTip;
    self.contentField.text = item.content;
}

- (void)textFieldDidChange:(id)sender
{
    self.item.content = self.contentField.text;
}

@end
