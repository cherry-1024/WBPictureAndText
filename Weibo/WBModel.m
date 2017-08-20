//
//  WBModel.m
//  Weibo
//
//  Created by csdc on 2017/8/20.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "WBModel.h"

@implementation WBModel

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    WBModel *model = [[self alloc] init];
    [model setValuesForKeysWithDictionary:dict];
    return model;
}

- (void)updateRowHeight {
    CGSize nameSize = [self.name boundingRectWithSize:CGSizeMake(150, 21) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    CGSize contentSize = [self.text boundingRectWithSize:CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds)-30, 150) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
    CGSize contentImageSize = CGSizeZero;
    if (self.picture) {
        contentImageSize = CGSizeMake(90, 90);
    }
    self.avatarFrame = CGRectMake(15, 15, 60, 60);
    self.nameFrame =CGRectMake(90, 35, nameSize.width, 21);
    self.vipFrame = CGRectMake(CGRectGetMaxX(self.nameFrame)+5, CGRectGetMinY(self.nameFrame), 21, 21);
    self.contentFrame = CGRectMake(15, CGRectGetMaxY(self.avatarFrame) + 15, contentSize.width, contentSize.height);
    self.contentImageFrame = CGRectMake(15, CGRectGetMaxY(self.contentFrame)+15, contentImageSize.width, contentImageSize.height);
    [ self setRowHeight:15 + CGRectGetHeight(self.avatarFrame) + 15 +CGRectGetHeight(self.contentFrame) + 15 + CGRectGetHeight(self.contentImageFrame) + 15];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {}

@end
