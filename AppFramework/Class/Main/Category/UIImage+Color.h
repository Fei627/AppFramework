//
//  UIImage+Color.h
//  AppFramework
//
//  Created by gaojianlong on 2017/4/11.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

/**
 根据颜色来创建一张图片

 @param color 颜色
 @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
