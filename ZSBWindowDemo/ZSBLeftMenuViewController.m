//
//  ZSBLeftMenuViewController.m
//  ZSBWindowDemo
//
//  Created by hugh on 16/8/2.
//  Copyright © 2016年 hugh. All rights reserved.
//

#import "ZSBLeftMenuViewController.h"
#import "AppDelegate.h"

NSString *const zTableViewCellReuseIdentifierDefault = @"zTableViewCellReuseIdentifierDefault";

@interface ZSBLeftMenuViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray *dataList;

@end

@implementation ZSBLeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"主菜单";
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:zTableViewCellReuseIdentifierDefault];
    _tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    [self.view addSubview:_tableView];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    _tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)dataList
{
    if (_dataList == nil) {
        _dataList = @[@"三视图",@"双视图",@"单视图"];
    }
    return _dataList;
}

#pragma mark - UITableViewDelegate,UITableViewDataSource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:zTableViewCellReuseIdentifierDefault forIndexPath:indexPath];
    cell.textLabel.text = self.dataList[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AppDelegate *appDelete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    switch (indexPath.row) {
        case 0:
            appDelete.contentWindow.windowLevel = ZSBWindowLevelLow;
            break;
        case 1:
            appDelete.contentWindow.windowLevel = ZSBWindowLevelHigh;
            break;
        case 2:
            appDelete.allScreenWindow.windowLevel = ZSBWindowLevelHigh;
            break;
        default:
            break;
    }
}

@end
