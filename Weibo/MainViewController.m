//
//  MainViewController.m
//  Weibo
//
//  Created by csdc on 2017/8/19.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "MainViewController.h"
#import "WBTableView.h"
#import "WBTableViewModel.h"

@interface MainViewController ()

@property (nonatomic, strong) WBTableView *tableView;
@property (nonatomic, strong) WBTableViewModel *model;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"微博图文混排";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.model = [WBTableViewModel model];
    [self.model loadData];
    self.tableView = [WBTableView tableViewWithFrame:self.view.bounds delegate:self.model];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
