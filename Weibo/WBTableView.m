//
//  WBTableView.m
//  Weibo
//
//  Created by csdc on 2017/8/19.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "WBTableView.h"
#import "WBTableViewCell.h"

@implementation WBTableView

+ (instancetype)tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDelegate,UITableViewDataSource>)delegate {
    WBTableView *tableView = [[self alloc] initWithFrame:frame style:UITableViewStylePlain];
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [tableView registerClass:[WBTableViewCell class] forCellReuseIdentifier:@"WBTableViewCell"];
    return tableView;
}

@end
