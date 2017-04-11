//
//  JLTabBarController.m
//  AppFramework
//
//  Created by gaojianlong on 2017/4/10.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "JLTabBarController.h"
#import "JLNavigationController.h"
#import "HomeController.h"
#import "MineController.h"

@interface JLTabBarController ()

@end

@implementation JLTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self addChildController];
}

- (void)addChildController
{
    JLNavigationController *homeNavigaC = [[JLNavigationController alloc] initWithRootViewController:[[HomeController alloc] init]];
    homeNavigaC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"tab_home"] selectedImage:[UIImage imageNamed:@"tab_home_selected"]];
    
    JLNavigationController *mineNavigaC = [[JLNavigationController alloc] initWithRootViewController:[[MineController alloc] init]];
    mineNavigaC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"tab_mine"] selectedImage:[UIImage imageNamed:@"tab_mine_selected"]];
    
    self.viewControllers = @[homeNavigaC,mineNavigaC];
}

@end
