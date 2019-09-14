//
//  LFBaseViewControllerConfig.h
//  LFBaseViewController
//
//  Created by liufan on 2019/9/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFBaseViewControllerConfig : NSObject

+ (instancetype)shareConfig;

@property (nonatomic,strong) UIColor  *LF_Nav_BgColor;
@property (nonatomic,strong) UIColor  *LF_Nav_Title_TextColor;
@property (nonatomic,strong) UIFont   *LF_Nav_Title_Font;
@property (nonatomic,strong) UIImage  *LF_Nav_BackButton_Image;
@property (nonatomic,strong) UIColor  *LF_Nav_LineView_bgColor;

@end

NS_ASSUME_NONNULL_END
