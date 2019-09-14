//
//  LFBaseNavigationView.h
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFBaseNavigationView : UIView

@property (nonatomic, strong) UIView *statusView;
@property (nonatomic, strong) UIView *contentBgView;
@property (nonatomic, strong) UIButton *leftButton;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *lineView;

@end

NS_ASSUME_NONNULL_END
