//
//  LFBaseNavigationController.m
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import "LFBaseNavigationController.h"

@interface LFBaseNavigationController ()

@end

@implementation LFBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBarHidden = YES;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count >= 1){
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [self willChangeValueForKey:@"topViewController"];
    [super pushViewController:viewController animated:YES];
    [self didChangeValueForKey:@"topViewController"];
}

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated {
    
    [self willChangeValueForKey:@"topViewController"];
    id vc =  [super popViewControllerAnimated:animated];
    [self didChangeValueForKey:@"topViewController"];
    
    return vc;
}

- (nullable NSArray<__kindof UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    [self willChangeValueForKey:@"topViewController"];
    id vc = [super popToViewController:viewController animated:animated];
    [self didChangeValueForKey:@"topViewController"];
    
    return vc;
}

- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated {
    
    [self willChangeValueForKey:@"topViewController"];
    id vc = [super popToRootViewControllerAnimated:animated];
    [self didChangeValueForKey:@"topViewController"];
    
    return vc;
}

@end

