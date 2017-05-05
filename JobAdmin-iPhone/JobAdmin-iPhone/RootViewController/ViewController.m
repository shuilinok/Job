//
//  ViewController.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 05/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "ViewController.h"
#import "JobEditViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIViewController *contentController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JobEditViewController *jobController = [JobEditViewController instance];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:jobController];
    
    self.contentController = navController;
    
    //加在根控制器上
    [self.view addSubview:self.contentController.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
