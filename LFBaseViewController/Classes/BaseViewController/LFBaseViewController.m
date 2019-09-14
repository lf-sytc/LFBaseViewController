//
//  LFBaseViewController.m
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import "LFBaseViewController.h"

@interface LFBaseViewController ()

@end

@implementation LFBaseViewController

#pragma mark - Life

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initXZWLBaseViewControllerUI];
    _navView.titleLabel.text = _topTitle?_topTitle:@"";
}

#pragma mark - init UI

- (void)initXZWLBaseViewControllerUI {
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    _navView = [[LFBaseNavigationView alloc] initWithFrame:CGRectMake(0, 0 , self.view.frame.size.width, [LFUIAdaptiveTool sharedInstance].NAV_HEIGHT)];
    [self.view addSubview:_navView];
    
    [_navView.leftButton addTarget:self action:@selector(backButtonEvent) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - Reload UI

- (void)setTopTitle:(NSString *)top {
    _topTitle = top;
    _navView.titleLabel.text = _topTitle;
}

#pragma mark - Nav Event

- (void)backButtonEvent {
    
    if ([[self.navigationController viewControllers] count] > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
