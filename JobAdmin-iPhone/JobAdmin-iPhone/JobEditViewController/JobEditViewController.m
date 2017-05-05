//
//  JobEditViewController.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "JobEditViewController.h"
#import "JobEditListViewController.h"
#import "AdminJob.h"

@interface JobEditViewController ()

@end

@implementation JobEditViewController

+ (instancetype)instance
{
    JobEditViewController *vc = [[JobEditViewController alloc] init];
    
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AdminJob *job = [[AdminJob alloc] init];
    
    job.title = @"测试";
    job.city = @"西安";
    job.company = @"小K科技";
    
    [job add:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
