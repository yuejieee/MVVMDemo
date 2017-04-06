//
//  DetailViewModel.m
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "DetailViewModel.h"

@implementation DetailViewModel

- (void)fetchDataWithDataId:(NSString *)dataId {
    NSString *string = [NSString stringWithFormat:@"没错,这就是下标： %@", dataId];
    self.returnBlock(string);
}

@end
