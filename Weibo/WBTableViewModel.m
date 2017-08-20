//
//  WBTableViewModel.m
//  Weibo
//
//  Created by csdc on 2017/8/19.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "WBTableViewModel.h"
#import "WBModel.h"
#import "WBTableViewCell.h"

@implementation WBTableViewModel

+ (instancetype)model {
    WBTableViewModel *model = [[self alloc] init];
    return model;
}

- (void)loadData {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses" ofType:@"plist"];
    NSArray *dataArray = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dataDict in dataArray) {
        WBModel *model = [WBModel modelWithDict:dataDict];
        [tempArray addObject:model];
        [model updateRowHeight];
    }
    self.dataArray = [tempArray copy];
}

#pragma mark - Table view delegate -
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    WBModel *model = self.dataArray[indexPath.row];
    return model.rowHeight;
}

#pragma mark - Table view data source - 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBTableViewCell"];
    [cell updateCellWithModel:self.dataArray[indexPath.row]];
    return cell;
}

@end
