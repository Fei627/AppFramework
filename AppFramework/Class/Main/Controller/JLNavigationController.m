//
//  JLNavigationController.m
//  AppFramework
//
//  Created by gaojianlong on 2017/4/11.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "JLNavigationController.h"

@interface JLNavigationController ()

@end

@implementation JLNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setNavigationBarStyle];
}

- (void)setNavigationBarStyle
{
    //设置导航栏背景图片
    [self.navigationBar setBackgroundImage:[UIImage imageWithColor:kRGBColor(28, 174, 250)] forBarMetrics:UIBarMetricsDefault];
    //设置导航栏标题字体颜色
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //设置导航栏返回按钮
    UIImage *backButtonImage = [[UIImage imageNamed:@"back"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    //将返回按钮的文字position设置不在屏幕上显示
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin, NSIntegerMin) forBarMetrics:UIBarMetricsDefault];
    //设置状态栏字体颜色为白色，并且在info.plist文件中设置View controller-based status bar appearance 为 YES
    [self preferredStatusBarStyle];
}

//重写父类的push方法，能拦截所有push进来的子控制器
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0)
    {//隐藏底部标签栏
        [viewController setHidesBottomBarWhenPushed:YES];
    }
    [super pushViewController:viewController animated:animated];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
