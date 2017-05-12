//
//  LabelFieldXibCellItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "LabelFieldXibCellItem.h"

@interface LabelFieldXibCellItem ()

@property (weak, nonatomic) LabelFieldCell *cell;

@end

@implementation LabelFieldXibCellItem

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
