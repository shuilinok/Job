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

- (JobEditItem *)createJobEditItem
{
    JobEditItem *totalItem = [[JobEditItem alloc] init];
    
    LabelSectionItem *basicItem = [[LabelSectionItem alloc] init];
    totalItem.basicItem = basicItem;
    LabelSectionItem *contentItem = [[LabelSectionItem alloc] init];
    totalItem.contentItem = contentItem;
    
    //值
    basicItem.getHeaderCommand = [MCProtocolCommand command:self selector:@selector(basicItem:getHeaderView:section:)];
    
    //
    LabelFieldCellItem *positionItem = [[LabelFieldCellItem alloc] init];
    positionItem.getCellCommand = [MCProtocolCommand command:self selector:@selector(positionItem:getCell:indexPath:)];
    
    totalItem.positionItem = positionItem;
    
    LabelFieldCellItem *cityItem = [[LabelFieldCellItem alloc] init];
    totalItem.cityItem = cityItem;
    
    LabelFieldCellItem *companyItem = [[LabelFieldCellItem alloc] init];
    totalItem.companyItem = companyItem;
    
    return totalItem;
}

- (id)basicItem:(SectionItem *)sectionItem getHeaderView:(UITableView *)tableView section:(NSInteger)section
{
    LabelSectionHeaderView *v = [[[NSBundle mainBundle] loadNibNamed:@"LabelSectionHeaderView" owner:nil options:nil] lastObject];
    
    return v;
}

- (id)positionItem:(CellItem *)cellItem getCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath
{
    LabelFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LabelFieldCell" forIndexPath:indexPath];
    
    return cell;
}

@end
