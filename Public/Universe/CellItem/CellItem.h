//
//  CellItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 08/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface CellItem : NSObject

@property (assign, nonatomic) CGFloat height;

@property (assign, nonatomic) BOOL hidden;

@property (weak, nonatomic) UITableViewCell *cell;


@end



@interface SectionItem : NSObject

@property (assign, nonatomic) CGFloat headerHeight;

@property (weak, nonatomic) UIView *headerView;

@end

