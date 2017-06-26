//
//  YTBarButtonItemSelecteViewExample.m
//  YTBarButtonItemSelecteView-Demo
//
//  Created by lan on 2017/4/29.
//  Copyright © 2017年 com.tzshlyt.demo. All rights reserved.
//

#import "YTBarButtonItemSelecteViewExample.h"
#import "YTBarButtonItemSelecteView.h"

@implementation YTBarButtonItemSelecteViewExample

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *item = nil;
    item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                         target:self
                                                         action:@selector(leftItemAction:)];
    self.navigationItem.leftBarButtonItem = item;
    
    
    item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
                                                         target:self
                                                         action:@selector(rightItemAction:)];
    self.navigationItem.rightBarButtonItem = item;
    
}

- (void)leftItemAction:(UIBarButtonItem *)sender {
    YTBarButtonItemSelecteView *selecteView = [[YTBarButtonItemSelecteView alloc] initWithView:self.navigationController.view];

    [selecteView addActionWithTitle:@"Logs"
                              image:[UIImage imageNamed:@"history"]
                            handler:^(UIButton *action) {
        self.navigationItem.title = @"left logs";
    }];
    
    [selecteView addActionWithTitle:@"Edite"
                              image:[UIImage imageNamed:@"edit"]
                            handler:^(UIButton *action) {
        self.navigationItem.title = @"left edite";
                                
    }];
    [selecteView addActionWithTitle:@"more"
                              image:[UIImage imageNamed:@"more"]
                            handler:^(UIButton *action) {
        self.navigationItem.title = @"left more";
    }];
    [selecteView showBelowBarButtonItem:sender];
}

- (void)rightItemAction:(UIBarButtonItem *)sender {
    YTBarButtonItemSelecteView *selecteView = [[YTBarButtonItemSelecteView alloc] initWithView:self.navigationController.view];
    
    [selecteView addActionWithTitle:@"Logs"
                              image:[UIImage imageNamed:@"history"]
                            handler:^(UIButton *action) {
         self.navigationItem.title = @"right logs";
    }];
    
    [selecteView addActionWithTitle:@"Edit"
                              image:[UIImage imageNamed:@"edit"]
                            handler:^(UIButton *action) {
         self.navigationItem.title = @"right edit";
    }];
    [selecteView showBelowBarButtonItem:sender];
}

@end
