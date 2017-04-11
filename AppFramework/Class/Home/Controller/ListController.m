//
//  ListController.m
//  AppFramework
//
//  Created by gaojianlong on 2017/4/10.
//  Copyright © 2017年 JLB. All rights reserved.
//

#import "ListController.h"
#import "DetailController.h"

@interface ListController ()

@property (nonatomic, strong) UIBarButtonItem *rightBtn;

@end

@implementation ListController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"订单列表";
    self.navigationItem.rightBarButtonItem = self.rightBtn;
}

- (void)goDetail
{
    DetailController *vc = [[DetailController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (UIBarButtonItem *)rightBtn
{
    if (!_rightBtn) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(0, 0, 80, 44);
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 0);
        btn.titleLabel.font = [UIFont systemFontOfSize:15];
        [btn setTitle:@"明细" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(goDetail) forControlEvents:UIControlEventTouchUpInside];
        _rightBtn = [[UIBarButtonItem alloc] initWithCustomView:btn];
    }
    return _rightBtn;
}

@end
