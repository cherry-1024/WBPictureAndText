//
//  WBTableViewModel.h
//  Weibo
//
//  Created by csdc on 2017/8/19.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface WBTableViewModel : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataArray;

+ (instancetype)model;
- (void)loadData;

@end
