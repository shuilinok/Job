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

- (LabelSectionItem *)createBasicItem
{
    LabelSectionItem *item = [[LabelSectionItem alloc] init];
    item.headerHeight = 40;
    item.title = @"基本信息";
    item.buildHeaderCommand = [MCProtocolCommand command:self selector:@selector(labelSectionItem:tableView:viewForHeaderInSection:)];
    
    return item;
}

- (LabelSectionItem *)createContentItem
{
    LabelSectionItem *item = [[LabelSectionItem alloc] init];
    item.headerHeight = 40;
    item.title = @"具体信息";
    item.buildHeaderCommand = [MCProtocolCommand command:self selector:@selector(labelSectionItem:tableView:viewForHeaderInSection:)];
    
    return item;
}

- (LabelFieldCellItem *)createPositionItem
{
    LabelFieldCellItem *item = [[LabelFieldCellItem alloc] init];
    item.height = 50;
    item.buildCommand = [MCProtocolCommand command:self selector:@selector(labelFieldCellItem:tableView:cellForRowAtIndexPath:)];
    
    return item;
}

- (LabelFieldCellItem *)createCityItem
{
    LabelFieldCellItem *item = [[LabelFieldCellItem alloc] init];
    item.height = 50;
    item.buildCommand = [MCProtocolCommand command:self selector:@selector(labelFieldCellItem:tableView:cellForRowAtIndexPath:)];
    
    return item;
}

- (LabelFieldCellItem *)createCompanyItem
{
    LabelFieldCellItem *item = [[LabelFieldCellItem alloc] init];
    item.height = 50;
    item.buildCommand = [MCProtocolCommand command:self selector:@selector(labelFieldCellItem:tableView:cellForRowAtIndexPath:)];
    
    return item;
}

- (JobEditItem *)createJobEditItem
{
    JobEditItem *totalItem = [[JobEditItem alloc] init];
    
    LabelSectionItem *basicItem = [self createBasicItem];
    totalItem.basicItem = basicItem;
    
    LabelSectionItem *contentItem = [self createContentItem];
    totalItem.contentItem = contentItem;
    
    LabelFieldCellItem *positionItem = [self createPositionItem];
    totalItem.positionItem = positionItem;
    
    LabelFieldCellItem *cityItem = [self createCityItem];
    totalItem.cityItem = cityItem;
    
    LabelFieldCellItem *companyItem = [self createCompanyItem];
    totalItem.companyItem = companyItem;
    
    return totalItem;
}

- (UITableViewCell *)labelFieldCellItem:(LabelFieldCellItem *)item tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LabelFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LabelFieldCell" forIndexPath:indexPath];
    
    cell.item = item;
    
    return cell;
}

- (UIView *)labelSectionItem:(LabelSectionItem *)item tableView:(UITableView *)tableView viewForHeaderInSection:(NSNumber *)section
{
    LabelSectionHeaderView *v = [[[NSBundle mainBundle] loadNibNamed:@"LabelSectionHeaderView" owner:nil options:nil] lastObject];
    
    v.item = item;
    
    return v;
}

@end
