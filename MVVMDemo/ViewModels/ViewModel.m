//
//  ViewModel.m
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "ViewModel.h"
#import "DetailViewController.h"

@implementation ViewModel

- (void)fetchDataList {
    NSMutableArray *dataArray = [NSMutableArray new];
    for (NSInteger i = 0; i < 10; i++) {
        NSString *index = [NSString stringWithFormat:@"下标: %ld", i];
        [dataArray addObject:index];
    }
    self.returnBlock(dataArray);
}

- (void)pushWithDetailViewController:(UIViewController *)viewController dataId:(NSString *)dataId {
    DetailViewController *detailVC = [DetailViewController new];
    detailVC.dataId = dataId;
    [viewController.navigationController pushViewController:detailVC animated:YES];
}

@end
