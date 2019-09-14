//
//  LFBaseNavigationView.m
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import "LFBaseNavigationView.h"
#import "LFBaseViewControllerConfig.h"
#import <LFUIKit/LFUIHeader.h>
@interface LFBaseNavigationView()

@end


@implementation LFBaseNavigationView

#pragma mark - init

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        [self initUI];
    }
    return self;
}

#pragma mark - init UI

- (void)initUI {
    self.backgroundColor = [UIColor clearColor];
    
    _statusView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [LFUIAdaptiveTool sharedInstance].SCREEN_WIDTH, [LFUIAdaptiveTool sharedInstance].STATUS_HEIGHT)];
    _statusView.backgroundColor = [LFBaseViewControllerConfig shareConfig].LF_Nav_BgColor;
    [self addSubview:_statusView];
    
    _contentBgView = [[UIView alloc] initWithFrame:CGRectMake(0, _statusView.xBottom,[LFUIAdaptiveTool sharedInstance].SCREEN_WIDTH , 44)];
    _contentBgView.backgroundColor = [LFBaseViewControllerConfig shareConfig].LF_Nav_BgColor;
    [self addSubview:_contentBgView];
    
    //创建导航栏
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(49, self.frame.size.height - 44, self.frame.size.width-98, 44)];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.textColor = [LFBaseViewControllerConfig shareConfig].LF_Nav_Title_TextColor;
    _titleLabel.font = [LFBaseViewControllerConfig shareConfig].LF_Nav_Title_Font;
    [self addSubview:_titleLabel];
    
    //创建返回按钮
    _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _leftButton.frame = CGRectMake(5, self.frame.size.height - 44, 44, 44);
    [_leftButton setImage:[LFBaseViewControllerConfig shareConfig].LF_Nav_BackButton_Image forState:UIControlStateNormal];
    [self addSubview:_leftButton];
    
    //底部分割线
    _lineView = [[UIView alloc] initWithFrame:CGRectMake(0,self.frame.size.height - 0.5, self.frame.size.width, 0.5)];
    _lineView.backgroundColor = [LFBaseViewControllerConfig shareConfig].LF_Nav_LineView_bgColor;
    [self addSubview:_lineView];
    _lineView.hidden = YES;
}


@end

