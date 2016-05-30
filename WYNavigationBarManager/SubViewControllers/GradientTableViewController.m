//
//  GradientTableViewController.m
//  WYNavigationBarManager
//
//  Created by 徐悟源 on 16/5/30.
//  Copyright © 2016年 徐悟源. All rights reserved.
//

#import "GradientTableViewController.h"
#import "WYNavigationBarManager.h"

#define SCREEN_RECT [UIScreen mainScreen].bounds

static NSString *GradientID = @"GradientID";

@implementation GradientTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tableView.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.tableView.delegate = nil;
    [WYNavigationBarManager reStoreWithZeroStatus];
}

- (void)initBarManager
{
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor blackColor]];
    [WYNavigationBarManager setTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];
    [WYNavigationBarManager setZeroAlphaOffset:-64];
    [WYNavigationBarManager setFullAlphaOffset:240];
    [WYNavigationBarManager setFullAlphaTintColor:[UIColor whiteColor]];
    [WYNavigationBarManager setFullAlphaBarStyle:UIStatusBarStyleLightContent];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initBarManager];
    [self setupViews];
    
}

- (void)setupViews
{
    UIImageView *headImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width ,240 )];
    headImage.image = [UIImage imageNamed:@"headImage"];
    
    self.tableView.tableHeaderView = headImage;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:GradientID];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [WYNavigationBarManager changeAlphaWithCurrentOffset:scrollView.contentOffset.y];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:GradientID forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

@end
