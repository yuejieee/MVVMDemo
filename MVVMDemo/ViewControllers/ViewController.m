//
//  ViewController.m
//  MVVMDemo
//
//  Created by Kingpin on 2017/4/6.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataArray;

@property (nonatomic, strong) ViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubviews];
}

- (void)setupSubviews {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.viewModel = [ViewModel new];
    __weak typeof(self) weakSelf = self;
    [self.viewModel setBlockWithReturnBlock:^(id returnObjcet) {
        weakSelf.dataArray = returnObjcet;
        [weakSelf.tableView reloadData];
    } ErrorBlock:^(id errorObject) {
        NSLog(@"%@", errorObject);
    }];
    [self.viewModel fetchDataList];
}

#pragma mark - tableView delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *dataId = [NSString stringWithFormat:@"%ld", indexPath.row];
    [self.viewModel pushWithDetailViewController:self dataId:dataId];
}

#pragma mark - tableView data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuse = @"tableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuse];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuse];
    }
    cell.textLabel.text = self.dataArray[indexPath.item];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
