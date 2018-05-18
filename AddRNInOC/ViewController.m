//
//  ViewController.m
//  AddRNInOC
//
//  Created by rocky on 2018/5/17.
//  Copyright © 2018年 rocky. All rights reserved.
//

#import "ViewController.h"
#import "RNRootViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 375, 40)];
    btn1.backgroundColor = [UIColor grayColor];
    [btn1 setTitle:@"go to firstPage" forState:UIControlStateNormal];
     [self.view addSubview:btn1];
    btn1.tag = 100;
    [btn1 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(0, 200, 375, 40)];
    btn2.backgroundColor = [UIColor grayColor];
    [btn2 setTitle:@"go to secondPage" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    btn2.tag = 101;
    [btn2 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnAction:(UIButton *)btn{
    RNRootViewController *rn = [[RNRootViewController alloc]init];
    if(btn.tag == 100){
        rn.pageName = @"FirstPage";
        
    }else{
        rn.pageName = @"SecondPage";
    }
    rn.dicData = @{@"data":@{@"first":@"我是第一页的数据",
                             @"second":@"我是第二页的数据"
                             }
                   };
    [self.navigationController pushViewController:rn animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
