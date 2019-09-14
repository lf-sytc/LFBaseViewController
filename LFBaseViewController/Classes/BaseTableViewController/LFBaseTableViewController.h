//
//  LFBaseTableViewController.h
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import "LFBaseViewController.h"

@interface LFBaseTableViewController : LFBaseViewController
<UITableViewDataSource,
UITableViewDelegate>
{
    UITableView    *mainTableView;
    NSMutableArray *mainDataArray;
}

/**
 配置TableView的样式
 
 @return tableView样式 默认UITableViewStyleGrouped
 */
- (UITableViewStyle)configTableViewStyle;

@end
