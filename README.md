# WYNavigationBarManager
- NavigationBar管理器，可实现NavigationBar全透明，底色渐变，底色突变，反转渐变的功能。

# 使用方法
- 全透明配置
- 
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

- 渐变配置
- 
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

- 底色突变
- 
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
        [WYNavigationBarManager setContinues: YES];
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
        
        [WYNavigationBarManager setContinues: NO];
    }
    
    - (void)viewDidLoad
    {
        [super viewDidLoad];
        
        [self initBarManager];
        [self setupViews];
        
    }

- 反转渐变
- 
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
