//
//  LFBaseViewController.h
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import <UIKit/UIKit.h>

#import "LFBaseNavigationView.h"

#import <LFUIKit/LFUIHeader.h>

@interface LFBaseViewController : UIViewController

@property (nonatomic, retain) LFBaseNavigationView *navView;

@property (nonatomic, strong) NSString *topTitle;


#pragma mark - nav event

- (void)backButtonEvent;

@end

