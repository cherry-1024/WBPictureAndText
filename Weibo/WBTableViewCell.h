//
//  WBTableViewCell.h
//  Weibo
//
//  Created by csdc on 2017/8/20.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WBModel.h"

@interface WBTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UIImageView *vipImageView;
@property (nonatomic, strong) UIImageView *contentImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *contentLabel;


- (void)updateCellWithModel:(WBModel *)model;
@end
