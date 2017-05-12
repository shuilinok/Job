//
//  LabelFieldCell.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>


//标题：编辑框
@interface LabelFieldCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITextField *contentField;

//参数1个，NSString *text;
@property (strong, nonatomic) MCProtocolCommand *fieldTextChangedCommand;

@end
