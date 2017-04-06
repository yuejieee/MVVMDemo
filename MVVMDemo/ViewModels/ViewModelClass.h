//
//  ViewModelClass.h
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ReturnBlock)(id returnObjcet);

typedef void(^ErrorBlock)(id errorObject);

@interface ViewModelClass : NSObject

@property (nonatomic, strong) ReturnBlock returnBlock;

@property (nonatomic, strong) ErrorBlock errorBlock;

- (void)setBlockWithReturnBlock:(ReturnBlock)returnBlock ErrorBlock:(ErrorBlock)errorBlock;

@end

