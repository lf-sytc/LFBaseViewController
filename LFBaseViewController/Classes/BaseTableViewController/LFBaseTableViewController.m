//
//  LFBaseTableViewController.m
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import "LFBaseTableViewController.h"

@interface LFBaseTableViewController ()

@end

@implementation LFBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLFBaseTableViewData];
    [self initLFBaseTableViewUI];
}

#pragma mark - 初始化数据部分
#pragma mark - Init Data
- (void)initLFBaseTableViewData
{
    mainDataArray = [[NSMutableArray alloc] init];
}

#pragma mark - Init UI

- (UITableViewStyle)configTableViewStyle{
    return UITableViewStyleGrouped;
}

- (void)creatBaseTableView
{
    mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.navView.xBottom,self.view.frame.size.width, [LFUIAdaptiveTool sharedInstance].SAFE_AREA_HEIGHT) style:[self configTableViewStyle]];
    mainTableView.delegate = self;
    mainTableView.dataSource = self;
    mainTableView.backgroundColor = [UIColor clearColor];
    mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:mainTableView];
    
    mainTableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, CGFLOAT_MIN)];
    
    mainTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, CGFLOAT_MIN)];
    
    if (@available(iOS 11.0, *)) {
        mainTableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }else{
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}

- (void)initLFBaseTableViewUI
{
    [self creatBaseTableView];
}


#pragma mark - 事件 or 回调

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mainDataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"BaseTableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BaseTableViewCell"];
    }
    return cell;
}


@end
