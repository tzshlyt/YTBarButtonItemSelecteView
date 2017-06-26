//
//  ViewController.m
//  YTBarButtonItemSelecteView-Demo
//
//  Created by lan on 2017/4/29.
//  Copyright © 2017年 com.tzshlyt.demo. All rights reserved.
//

#import "ViewController.h"
#import "YTBarButtonItemSelecteViewExample.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    YTBarButtonItemSelecteViewExample *vc = [[YTBarButtonItemSelecteViewExample alloc] init];
    [self pushViewController:vc animated:YES];
}

@end
