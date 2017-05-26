//
//  JobEditListViewController.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JobEditItem.h"
#import "KindCellItem.h"

@interface JobEditListViewController : UITableViewController

+ (instancetype)instance;

@property (strong, nonatomic) JobEditItem *totalItem;

@end
