//
//  RNRootViewController.m
//  AddRNInOC
//
//  Created by rocky on 2018/5/18.
//  Copyright © 2018年 rocky. All rights reserved.
//

#import "RNRootViewController.h"
#import <React/RCTRootView.h>
@interface RNRootViewController ()

@end

@implementation RNRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : self.pageName
                         initialProperties : self.dicData
                          launchOptions    : nil];
    self.view = rootView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
