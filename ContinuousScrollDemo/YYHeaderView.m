//
//  YYHeaderView.m
//  ContinuousScrollDemo
//
//  Created by 李雪峰 on 2021/3/14.
//  Copyright © 2021 Eric. All rights reserved.
//

#import "YYHeaderView.h"

@implementation YYHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    self = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                         owner:self
                                       options:nil][0];
    self.frame = frame;
    if (self) {
    }
    return self;
}

- (CGFloat)heightForView{
    return 1266;
}


@end
