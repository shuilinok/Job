//
//  ViewController.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "ViewController.h"
#import "BarTextButtonItem.h"
#import "JobViewController.h"
#import "JobEditViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIViewController *contentController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JobViewController *jobController = [JobViewController instance];
    jobController.addCommand = [MCProtocolCommand command:self selector:@selector(jobToAdd:)];//从列表页面跳转到增加页面
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:jobController];
    
    self.contentController = navController;
    
    //加在根控制器上
    [self.view addSubview:self.contentController.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UINavigationController *)currentNavigationController
{
    return (UINavigationController *)self.contentController;
}

- (id)jobToAdd:(BarTextButtonItem *)item
{
    JobEditViewController *controller = [JobEditViewController instance];
    
    [[self currentNavigationController] pushViewController:controller animated:YES];
    
    return nil;
}

@end
