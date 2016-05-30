//
//  MenuViewController.m
//  WYNavigationBarManager
//
//  Created by 徐悟源 on 16/5/30.
//  Copyright © 2016年 徐悟源. All rights reserved.
//

#import "MenuViewController.h"
#import "TranslateTableViewController.h"
#import "GradientTableViewController.h"
#import "MutationTableViewController.h"
#import "ReversalTableViewController.h"

@interface MenuViewController()

@property (nonatomic , strong) NSArray *titles;
@property (nonatomic , strong) NSArray *subViewControllers;

@end

static NSString *cellID = @"cellID";

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initBaseData];
    [self setupViews];
}

- (void)initBaseData
{
    _titles = @[@"全透明导航栏",
                @"渐变导航栏",
                @"突变导航栏",
                @"反转导航栏"];
    
    _subViewControllers = @[[TranslateTableViewController class],
                            [GradientTableViewController class],
                            [MutationTableViewController class],
                            [ReversalTableViewController class],];
    
}
- (void)setupViews
{
    self.title = @"Menu";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = _titles[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *vc = [_subViewControllers[indexPath.row] new];
    
    vc.title = _titles[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
