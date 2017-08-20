//
//  WBTableViewCell.m
//  Weibo
//
//  Created by csdc on 2017/8/20.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "WBTableViewCell.h"

@implementation WBTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.avatarImageView = [[UIImageView alloc] init];
        [self.avatarImageView setClipsToBounds:YES];
        [self.avatarImageView.layer setCornerRadius:30];
        [self.contentView addSubview:self.avatarImageView];
        
        self.nameLabel = [[UILabel alloc] init];
        [self.nameLabel setFont:[UIFont systemFontOfSize:17]];
        [self.nameLabel setTextColor:[UIColor darkGrayColor]];
        [self.contentView addSubview:self.nameLabel];
        
        self.vipImageView = [[UIImageView alloc] init];
        [self.vipImageView setContentMode:UIViewContentModeCenter];
        [self.contentView addSubview:self.vipImageView];
        
        self.contentLabel = [[UILabel alloc] init];
        [self.contentLabel setFont:[UIFont systemFontOfSize:15]];
        [self.contentLabel setNumberOfLines:0];
        [self.contentLabel setLineBreakMode:NSLineBreakByWordWrapping];
        [self.contentView addSubview:self.contentLabel];
        
        self.contentImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.contentImageView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateCellWithModel:(WBModel *)model {
 
    // 完成cell动态高度调整
    [self.avatarImageView setFrame:model.avatarFrame];
    [self.nameLabel setFrame:model.nameFrame];
    [self.vipImageView setFrame:model.vipFrame];
    [self.contentImageView setFrame:model.contentImageFrame];
    [self.contentLabel setFrame:model.contentFrame]; 
    
    // 完成数据更新
    self.avatarImageView.image = [UIImage imageNamed:model.icon];
    self.nameLabel.text = model.name;
    [self.vipImageView setHidden:(model.vip.integerValue == 1)];
    self.contentLabel.text = model.text;
    self.contentImageView.image = [UIImage imageNamed:model.picture];
    
}

@end
