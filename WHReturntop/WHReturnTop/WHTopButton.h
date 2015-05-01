//
//  WHTopButton.h
//  WHReturntop
//
//  Created by 万文浩 on 15/4/30.
//  Copyright (c) 2015年 万文浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WHTopButton : UIButton

/** scrollview滚动参照物Y 可得知scrollview滚动方向 */
@property (nonatomic , assign)CGFloat startContentOffsetY;

- (void)setWHReturnTarget:(id)target WHReturnTopAction:(SEL)action;
@property (nonatomic , assign)SEL WHReturnTopAction;
@property (nonatomic , weak)id WHReturnTopTarget;
@property (nonatomic , copy)void (^WHReturnTopBlock)();

+ (instancetype)AddWHReturnTop:(CGRect)buttonCGRect BackImage:(UIImageView *)imageView CallBackblock:(void(^)())Callblock;
@end
