//
//  JobEditViewController.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "JobEditViewController.h"
#import "JobEditListViewController.h"
#import "JobEditItem.h"
#import "AdminJob.h"

@interface JobEditViewController ()
@property (strong, nonatomic) JobEditItem *totalItem;
@property (strong, nonatomic) JobEditListViewController *listController;
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
    
    self.listController = [self createListController];
    
    self.totalItem = [self createJobEditItem];
    
    self.listController.totalItem = self.totalItem;
    
//    AdminJob *job = [[AdminJob alloc] init];
//    
//    job.title = @"测试";
//    job.city = @"西安";
//    job.company = @"小K科技";
//    
//    [job add:^(NSError *error) {
//        
//    }];

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

- (JobEditListViewController *)createListController
{
    JobEditListViewController *listController = [JobEditListViewController instance];
    
    [self addChildViewController:listController];
    [self.view addSubview:listController.view];
    
    return listController;
}

- (LabelXibSectionItem *)createBasicItem
{
    LabelXibSectionItem *item = [[LabelXibSectionItem alloc] init];
    item.xibName = @"LabelSectionHeaderView";
    item.headerHeight = 40;
    item.title = @"基本信息";
    
    return item;
}

- (LabelXibSectionItem *)createContentItem
{
    LabelXibSectionItem *item = [[LabelXibSectionItem alloc] init];
    item.xibName = @"LabelSectionHeaderView";
    item.headerHeight = 40;
    item.title = @"具体信息";
    
    
    return item;
}

- (LabelFieldXibCellItem *)createPositionItem
{
    LabelFieldXibCellItem *item = [[LabelFieldXibCellItem alloc] init];
    item.cellIdentifier = @"LabelFieldCell";
    item.height = 50;
    
    
    return item;
}

- (LabelFieldXibCellItem *)createCityItem
{
    LabelFieldXibCellItem *item = [[LabelFieldXibCellItem alloc] init];
    item.cellIdentifier = @"LabelFieldCell";
    item.height = 50;
    
    return item;
}

- (LabelFieldXibCellItem *)createCompanyItem
{
    LabelFieldXibCellItem *item = [[LabelFieldXibCellItem alloc] init];
    item.cellIdentifier = @"LabelFieldCell";
    item.height = 50;
    
    
    return item;
}

- (JobEditItem *)createJobEditItem
{
    JobEditItem *totalItem = [[JobEditItem alloc] init];
    
    LabelXibSectionItem *basicItem = [self createBasicItem];
    totalItem.basicItem = basicItem;
    
    LabelXibSectionItem *contentItem = [self createContentItem];
    totalItem.contentItem = contentItem;
    
    LabelFieldXibCellItem *positionItem = [self createPositionItem];
    totalItem.positionItem = positionItem;
    
    LabelFieldXibCellItem *cityItem = [self createCityItem];
    totalItem.cityItem = cityItem;
    
    LabelFieldXibCellItem *companyItem = [self createCompanyItem];
    totalItem.companyItem = companyItem;
    
    return totalItem;
}


@end
