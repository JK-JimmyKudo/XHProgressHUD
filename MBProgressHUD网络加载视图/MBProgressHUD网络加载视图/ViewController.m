//
//  ViewController.m
//  MBProgressHUD网络加载视图
//
//  Created by DFSJ on 2017/7/21.
//  Copyright © 2017年 dfsj. All rights reserved.
//

#import "ViewController.h"
#import "UIView+MBProgressHUD.h"
#import "MBProgressHUD+NH.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    [self.view showActivity];
    
//    [self.view showActivityWithText:@"登录中..."];
    
//    [self.view showTextNoActivity:@"网络加载中" timeLength:3];
    
//    [MBProgressHUD showCustomIcon:nil Title:@"网络加载中" ToView:self.view];
//    [MBProgressHUD showSuccess:@"登录中..." ToView:self.view];
//    [MBProgressHUD showLoadToView:self.view];
//    [MBProgressHUD showProgressToView:self.view ProgressModel:MBProgressHUDModeDeterminateHorizontalBar Text:@"网络加载中"];
    [MBProgressHUD showMessage:@"网络加载中" ToView:self.view RemainTime:2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
