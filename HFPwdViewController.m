//
//  HFPwdViewController.m
//  02-交易密码
//
//  Created by mac_zhu on 22/2/16.
//  Copyright © 2016年 mac_zhu. All rights reserved.
//

#import "HFPwdViewController.h"
#import "DMPasscode.h"

@interface HFPwdViewController ()

@end

@implementation HFPwdViewController
{
    UIViewController* _rootViewController;
    UIButton* _setupButton;
    UIButton* _checkButton;
    UIButton* _removeButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addViews];
//    [self updateViews];
}

- (void)addViews {
    _setupButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 50)];
    [_setupButton setTitle:@"交易密码" forState:UIControlStateNormal];
    [_setupButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_setupButton addTarget:self action:@selector(actionSetup:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_setupButton];
    
//    _checkButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 50)];
//    [_checkButton setTitle:@"Check" forState:UIControlStateNormal];
//    [_checkButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [_checkButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
//    [_checkButton addTarget:self action:@selector(actionCheck:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_checkButton];
//    
//    _removeButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 50)];
//    [_removeButton setTitle:@"Remove" forState:UIControlStateNormal];
//    [_removeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [_removeButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
//    [_removeButton addTarget:self action:@selector(actionRemove:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_removeButton];
}

- (void)actionSetup:(UIButton *)sender {
    
    [DMPasscode setupPasscodeInViewController:self completion:^(BOOL success) {
        NSLog(@"%@",@"33333");
//        [self updateViews];
    }];
}

//- (void)actionCheck:(UIButton *)sender {
//    [DMPasscode showPasscodeInViewController:self completion:^(BOOL success) {
//        if (success) {
//            [sender setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
//        } else {
//            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//        }
//        [self updateViews];
//    }];
//}
//
//- (void)actionRemove:(id)sender {
//    [DMPasscode removePasscode];
//    [_checkButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self updateViews];
//}

- (void)updateViews {
    BOOL passcodeSet = [DMPasscode isPasscodeSet];
    _checkButton.enabled = passcodeSet;
    _removeButton.enabled = passcodeSet;
}


@end
