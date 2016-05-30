//
//  TranslateTableViewController.m
//  WYNavigationBarManager
//
//  Created by 徐悟源 on 16/5/30.
//  Copyright © 2016年 徐悟源. All rights reserved.
//

#import "TranslateTableViewController.h"
#import "WYNavigationBarManager.h"

static NSString *translateID = @"translateID";

@implementation TranslateTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tableView.delegate = self;
    [self initBarManager];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.tableView.delegate = nil;
    [WYNavigationBarManager reStore];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupViews];
    
}

- (void)initBarManager
{
    [WYNavigationBarManager saveWithController:self];
    
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor clearColor]];
    
    [WYNavigationBarManager setTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];
}

- (void)setupViews
{
    UIImageView *headImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width ,240 )];
    headImage.image = [UIImage imageNamed:@"headImage"];
    
    self.tableView.tableHeaderView = headImage;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:translateID];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:translateID forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

@end
