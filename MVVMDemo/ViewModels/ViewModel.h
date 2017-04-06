//
//  ViewModel.h
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "ViewModelClass.h"
@class UIViewController;
@interface ViewModel : ViewModelClass

- (void)fetchDataList;

- (void)pushWithDetailViewController:(UIViewController *)viewController dataId:(NSString *)dataId;

@end
