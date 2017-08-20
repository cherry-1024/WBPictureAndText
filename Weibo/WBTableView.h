//
//  WBTableView.h
//  Weibo
//
//  Created by csdc on 2017/8/19.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBTableView : UITableView

+ (instancetype)tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDelegate, UITableViewDataSource>)delegate;

@end
