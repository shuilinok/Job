//
//  JobViewController.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 31/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobViewController : UIViewController

+ (instancetype)instance;

//参数1个,BarTextButtonItem
@property (strong, nonatomic) MCProtocolCommand *addCommand;

@end
