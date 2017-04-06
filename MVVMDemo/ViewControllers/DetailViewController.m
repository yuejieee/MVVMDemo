//
//  DetailViewController.m
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailViewModel.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupSubviews];
}

- (void)setupSubviews {
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.frame = self.view.frame;
    label.textAlignment = NSTextAlignmentCenter;
    
    DetailViewModel *detailViewModel = [DetailViewModel new];
    [detailViewModel setBlockWithReturnBlock:^(id returnObjcet) {
        label.text = returnObjcet;
    } ErrorBlock:^(id errorObject) {
        NSLog(@"%@", errorObject);
    }];
    [detailViewModel fetchDataWithDataId:self.dataId];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
