//
//  ReversalTableViewController.m
//  WYNavigationBarManager
//
//  Created by 徐悟源 on 16/5/30.
//  Copyright © 2016年 徐悟源. All rights reserved.
//

#import "ReversalTableViewController.h"
#import "WYNavigationBarManager.h"

static NSString *ReversalID = @"ReversalID";

@implementation ReversalTableViewController

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
    [WYNavigationBarManager setReversal:NO];
    [WYNavigationBarManager setContinues:YES];
}

- (void)initBarManager
{
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor blackColor]];
    [WYNavigationBarManager setTintColor:[UIColor whiteColor]];
    
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];
    [WYNavigationBarManager setFullAlphaTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setFullAlphaBarStyle:UIStatusBarStyleLightContent];
    
    [WYNavigationBarManager setContinues:YES];
    [WYNavigationBarManager setReversal:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupViews];
    [self initBarManager];
}

- (void)setupViews
{
    UIImageView *headImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width ,240 )];
    headImage.image = [UIImage imageNamed:@"headImage"];
    
    self.tableView.tableHeaderView = headImage;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ReversalID];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ReversalID forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

@end
