# YTBarButtonItemSelecteView

![Xcode 8.3.3](https://img.shields.io/badge/Xcode-8.3.3-0080FF.svg)
![iOS 8+](https://img.shields.io/badge/iOS-8+-green.svg)
[![License: MIT](https://img.shields.io/cocoapods/l/MBProgressHUD.svg?style=flat)](http://opensource.org/licenses/MIT)

## 简介

简单实现点击 navigationItem BarButtonItem 后展现一串下拉按钮，可自定义添加按钮。

- leftBarButtonItem

<img src="https://github.com/tzshlyt/YTBarButtonItemSelecteView/blob/master/left.png" width="200">

- rightBarButtonItem

<img src="https://github.com/tzshlyt/YTBarButtonItemSelecteView/blob/master/right.png" width="200">

## 使用

```objective-c
UIBarButtonItem *item = nil;
item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                     target:self
                                                     action:@selector(leftItemAction:)];
self.navigationItem.leftBarButtonItem = item;
    
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
```


## 作者

ytlan0201@gmail.com
