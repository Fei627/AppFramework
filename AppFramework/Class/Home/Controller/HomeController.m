//
//  HomeController.m
//  AppFramework
//
//  Created by gaojianlong on 2017/4/10.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "HomeController.h"
#import "ListController.h"

@interface HomeController ()

@property (nonatomic, strong) UIBarButtonItem *rightBtn;

@end

@implementation HomeController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"首页";
    self.navigationItem.rightBarButtonItem = self.rightBtn;
}

- (void)goOrderList
{
    [self.navigationController pushViewController:[[ListController alloc] init] animated:YES];
}

- (UIBarButtonItem *)rightBtn
{
    if (!_rightBtn) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(0, 0, 80, 44);
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 0);
        btn.titleLabel.font = [UIFont systemFontOfSize:15];
        [btn setTitle:@"订单" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(goOrderList) forControlEvents:UIControlEventTouchUpInside];
        _rightBtn = [[UIBarButtonItem alloc] initWithCustomView:btn];
    }
    return _rightBtn;
}

@end
