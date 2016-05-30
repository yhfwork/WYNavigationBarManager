# WYNavigationBarManager
- NavigationBar管理器，可实现NavigationBar全透明，底色渐变，底色突变，反转渐变的功能。

# 使用方法
- 全透明配置
- 
    [WYNavigationBarManager saveWithController:self];
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor clearColor]];
    [WYNavigationBarManager setTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];

- 渐变配置
- 
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor blackColor]];
    [WYNavigationBarManager setTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];
    [WYNavigationBarManager setZeroAlphaOffset:-64];
    [WYNavigationBarManager setFullAlphaOffset:240];
    [WYNavigationBarManager setFullAlphaTintColor:[UIColor whiteColor]];
    [WYNavigationBarManager setFullAlphaBarStyle:UIStatusBarStyleLightContent];

- 底色突变
- 
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor blackColor]];
    [WYNavigationBarManager setTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];
    [WYNavigationBarManager setZeroAlphaOffset:-64];
    [WYNavigationBarManager setFullAlphaOffset:240];
    [WYNavigationBarManager setFullAlphaTintColor:[UIColor whiteColor]];
    [WYNavigationBarManager setFullAlphaBarStyle:UIStatusBarStyleLightContent];
    [WYNavigationBarManager setContinues: NO];

- 反转渐变
- 
    [WYNavigationBarManager managerWithController:self];
    [WYNavigationBarManager setBarColor:[UIColor blackColor]];
    [WYNavigationBarManager setTintColor:[UIColor whiteColor]];
    [WYNavigationBarManager setStatusBarStyle:UIStatusBarStyleDefault];
    [WYNavigationBarManager setFullAlphaTintColor:[UIColor blackColor]];
    [WYNavigationBarManager setFullAlphaBarStyle:UIStatusBarStyleLightContent];
    [WYNavigationBarManager setContinues:YES];
    [WYNavigationBarManager setReversal:YES];
