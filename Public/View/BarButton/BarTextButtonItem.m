//
//  BarTextButtonItem.m
//  JobAdmin-iPhone
//
//  Created by shuilin on 12/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import "BarTextButtonItem.h"

@interface BarTextButtonItem ()
@property (strong, nonatomic) UIButton *button;
@end

@implementation BarTextButtonItem

+ (instancetype)instance
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 32, 32);
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    BarTextButtonItem *item = [[BarTextButtonItem alloc] initWithCustomView:button];
    
    item.button = button;
    
    [item doInit];
    
    return item;
}

- (void)doInit
{
    [self.button addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clicked:(id)sender
{
    [self.clickCommand execute:1,self];
}

- (void)setTitleText:(NSString *)titleText
{
    _titleText = titleText;
    
    [self.button setTitle:titleText forState:UIControlStateNormal];
}
@end
