//
//  EditItem.h
//  JobAdmin-iPhone
//
//  Created by shuilin on 26/05/2017.
//  Copyright © 2017 enjoyloop. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LabelFieldEditItem <NSObject>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *contentTip;//编辑框中的提示

@end



@protocol LabelEditItem <NSObject>

@property (strong, nonatomic) NSString *title;

@end
