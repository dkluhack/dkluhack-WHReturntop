//
//  ViewController.m
//  WHReturntop
//
//  Created by dkluhck on 15/4/30.
//  Copyright (c) 2015年 dkluhck All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+WHReturntop.h"

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
    
    //* 实例 */
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fx_cart_top"]];
    [self AddWHReturnTop:CGRectMake(250, 500, 50, 50) BackImage:imageView CallBackblock:^{
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
    cell.textLabel.text = [NSString stringWithFormat:@"WHReturnTop %ld",indexPath.row];

    return cell;
}



@end
