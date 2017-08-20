//
//  WBModel.h
//  Weibo
//
//  Created by csdc on 2017/8/20.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WBModel : NSObject

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *picture;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSNumber *vip;

// 动态计算
@property (nonatomic, assign) CGRect avatarFrame;
@property (nonatomic, assign) CGRect nameFrame;
@property (nonatomic, assign) CGRect vipFrame;
@property (nonatomic, assign) CGRect contentFrame;
@property (nonatomic, assign) CGRect contentImageFrame;
@property (nonatomic, assign) CGFloat rowHeight;


+ (instancetype)modelWithDict:(NSDictionary *)dict;
- (void)updateRowHeight;

@end
