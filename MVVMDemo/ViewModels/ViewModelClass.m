//
//  ViewModelClass.m
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "ViewModelClass.h"

@implementation ViewModelClass

- (void)setBlockWithReturnBlock:(ReturnBlock)returnBlock ErrorBlock:(ErrorBlock)errorBlock {
    self.returnBlock = returnBlock;
    self.errorBlock = errorBlock;
}

@end
