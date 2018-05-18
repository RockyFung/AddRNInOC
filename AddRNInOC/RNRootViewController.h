//
//  RNRootViewController.h
//  AddRNInOC
//
//  Created by rocky on 2018/5/18.
//  Copyright © 2018年 rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RNRootViewController : UIViewController
@property (nonatomic, copy) NSString *pageName; // page名称
@property (nonatomic, strong) NSDictionary *dicData;// 参数
@end
