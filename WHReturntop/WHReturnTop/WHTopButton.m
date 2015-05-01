//
//  WHTopButton.m
//  WHReturntop
//
//  Created by 万文浩 on 15/4/30.
//  Copyright (c) 2015年 万文浩. All rights reserved.
//

#import "WHTopButton.h"


@implementation WHTopButton

-(instancetype)initWithTopCGRect:(CGRect)buttonCGRect BackImage:(UIImageView *)imageView CallBackblock:(void(^)())Callblock
{
    if (self = [super init]) {
        [self addTarget:self.WHReturnTopTarget action:@selector(WHReturnTopActionSelector:) forControlEvents:UIControlEventTouchUpInside];
        self.WHReturnTopBlock = Callblock;
    }
    return self;
}

+(instancetype)AddWHReturnTop:(CGRect)buttonCGRect BackImage:(UIImageView *)imageView CallBackblock:(void (^)())Callblock
{

    return [[self alloc] initWithTopCGRect:buttonCGRect BackImage:imageView CallBackblock:Callblock];
}

-(void)setWHReturnTarget:(id)target WHReturnTopAction:(SEL)action
{
    self.WHReturnTopAction = action;
    self.WHReturnTopTarget = target;
    
}

- (void)WHReturnTopActionSelector:(UIButton *)sender
{
    if (self.WHReturnTopBlock) {
        self.WHReturnTopBlock();
    }
}

@end
