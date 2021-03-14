//
//  YYMainScrollView.m
//  ContinuousScrollDemo
//
//  Created by 李雪峰 on 2021/3/14.
//  Copyright © 2021 Eric. All rights reserved.
//

#import "YYMainScrollView.h"

@implementation YYMainScrollView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *hitView = [super hitTest:point withEvent:event];
    
    if (hitView == self) {
        return nil;
    }
    return hitView;
}

@end
