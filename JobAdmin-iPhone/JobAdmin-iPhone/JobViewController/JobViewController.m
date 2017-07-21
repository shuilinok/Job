//
//  JobViewController.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 31/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "JobViewController.h"
#import "JobListViewController.h"
#import "BarTextButtonItem.h"

@interface JobViewController ()

@end

@implementation JobViewController

+ (instancetype)instance
{
    JobViewController *controller = [[JobViewController alloc] init];
    
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.rightBarButtonItem = [self createRightBarItem];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BarTextButtonItem *)createRightBarItem
{
    BarTextButtonItem *item = [BarTextButtonItem instance];
    item.titleText = @"添加";
    item.clickCommand = self.addCommand;
    
    return item;
}
@end
