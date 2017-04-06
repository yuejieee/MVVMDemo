//
//  DetailViewModel.h
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "ViewModelClass.h"

@interface DetailViewModel : ViewModelClass

- (void)fetchDataWithDataId:(NSString *)dataId;

@end
