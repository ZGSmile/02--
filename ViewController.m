//
//  ViewController.m
//  02-交易密码
//
//  Created by mac_zhu on 22/2/16.
//  Copyright © 2016年 mac_zhu. All rights reserved.
//

#import "ViewController.h"
#import "HFPwdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    // 实例化按钮
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    [btn setTitle:@"按钮" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)clickAction {
    HFPwdViewController *pwd = [[HFPwdViewController alloc] init];
    [self.navigationController pushViewController:pwd animated:YES];
}

@end
