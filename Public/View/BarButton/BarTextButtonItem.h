//
//  BarTextButtonItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarTextButtonItem : UIBarButtonItem

+ (instancetype)instance;

@property (strong, nonatomic) NSString *titleText;

//参数1个，self
@property (strong, nonatomic) MCProtocolCommand *clickCommand;

@end
