//
//  JobEditListViewController.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "JobEditListViewController.h"

@interface JobEditListViewController ()

@end

@implementation JobEditListViewController

+ (instancetype)instance
{
    UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:@"JobEdit" bundle:nil];
    
    JobEditListViewController *vc = [storyBoard instantiateViewControllerWithIdentifier:@"JobEditListViewController"];
    
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.totalItem itemCount];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    GroupSectionItem *sectionItem = [self.totalItem itemAtIndex:section];
    
    return [sectionItem itemCount];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    NSUInteger row = indexPath.row;
    
    GroupSectionItem *sectionItem = [self.totalItem itemAtIndex:section];
    GroupCellItem *cellItem = [sectionItem itemAtIndex:row];
    if([cellItem isKindOfClass:[LabelFieldCellItem class]])
    {
        LabelFieldCellItem *item = (LabelFieldCellItem *)cellItem;
        
        LabelFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LabelFieldCell" forIndexPath:indexPath];
        item.cell = cell;
        
        return cell;
    }
    
    return nil;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    GroupSectionItem *sectionItem = [self.totalItem itemAtIndex:section];
    
    if([sectionItem isKindOfClass:[LabelSectionItem class]])
    {
        LabelSectionItem *item  = (LabelSectionItem *)sectionItem;
        LabelSectionHeaderView *v = [[[NSBundle mainBundle] loadNibNamed:@"LabelSectionHeaderView" owner:nil options:nil] lastObject];
        item.headerView = v;
        
        return v;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    NSUInteger row = indexPath.row;
    
    GroupSectionItem *sectionItem = [self.totalItem itemAtIndex:section];
    GroupCellItem *cellItem = [sectionItem itemAtIndex:row];
    
    return cellItem.height;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    GroupSectionItem *sectionItem = [self.totalItem itemAtIndex:section];
    
    return sectionItem.headerHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
