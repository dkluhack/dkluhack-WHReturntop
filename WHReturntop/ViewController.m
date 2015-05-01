//
//  ViewController.m
//  WHReturntop
//
//  Created by 万文浩 on 15/4/30.
//  Copyright (c) 2015年 万文浩. All rights reserved.
//

#import "ViewController.h"
#include "UIView+Size.h"
#import "UIViewController+WHReturntop.h"
#import "WHTopButton.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic , strong)UITableView *tableView;

@end
static NSString *ID = @"cell";

@implementation ViewController

- (UITableView *)tableView
{
    if (_tableView == nil) {
        CGRect rect = CGRectMake(0,0, FXScreenWidth, FXScreenHeight);
        _tableView = [[UITableView alloc] initWithFrame:rect];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
    }
    return _tableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    [self AddWHReturnTop:CGRectMake(250, 400, 50, 50) BackImage:nil CallBackblock:^{
        NSLog(@"点击了按钮");
        NSIndexPath *indexpath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView scrollToRowAtIndexPath:indexpath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"这是我的框架  %ld",indexPath.row];

    return cell;
}



@end