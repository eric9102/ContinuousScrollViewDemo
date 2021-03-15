//
//  ViewController.m
//  ContinuousScrollDemo
//
//  Created by 李雪峰 on 2021/3/14.
//  Copyright © 2021 Eric. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "YYMainScrollView.h"
#import "YYHeaderView.h"
#import "GKDBListView.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet YYMainScrollView *mainScrollView;

@property (nonatomic, strong) YYHeaderView *headerView;

@property (nonatomic, strong) GKDBListView *bottomView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.headerView = [[YYHeaderView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 0)];
    self.headerView.frame = CGRectMake(0, 0, SCREEN_WIDTH, [_headerView heightForView]);
    [self.view addSubview:_headerView];
    [_headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.left.right.mas_offset(0);
        make.height.mas_equalTo([_headerView heightForView]);
        
    }];
    
    
    self.mainScrollView.userInteractionEnabled = YES;
    self.mainScrollView.backgroundColor = UIColor.clearColor;
    self.mainScrollView.delegate = self;
    [self.view addGestureRecognizer:self.mainScrollView.panGestureRecognizer];
    [self.view bringSubviewToFront:_mainScrollView];
    
    
    [self.mainScrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1600+1200)];
    
//    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
//    [btn1 setTitle:@"button in scrollview" forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(btn1Action) forControlEvents:UIControlEventTouchUpInside];
//    [self.mainScrollView addSubview:btn1];
//    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
//
//        make.top.left.mas_offset(100);
//        make.width.mas_equalTo(200);
//        make.height.mas_equalTo(200);
//        make.bottom.equalTo(self.mainScrollView).offset(-2000);
//
//    }];
    
    
    self.bottomView = [GKDBListView new];
    _bottomView.frame = CGRectMake(0, SCREEN_HEIGHT - 100, SCREEN_WIDTH, [_bottomView heightFowView]);
    [self.view addSubview:_bottomView];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGRect rect = _headerView.frame;
    rect.origin.y = 0;

    CGFloat offset = scrollView.contentOffset.y + 44;
    
    NSLog(@"scrollview offset is : %f", offset);
    
    rect.origin.y -= offset;
    _headerView.frame = rect;
    
    //-----------------------------------------------------------------------
    CGFloat borderOffset = 1600-(SCREEN_HEIGHT-100);
    if (offset>=borderOffset) {
        
        CGRect bottomRect = _bottomView.frame;
        bottomRect.origin.y = (SCREEN_HEIGHT-100) - (offset-borderOffset);
        _bottomView.frame = bottomRect;
        
    }
    
}

- (void)btn1Action{
    
    NSLog(@"btn1 is clicked");
    
}


- (void)backgroundButtonAction{
    
    NSLog(@"backgroundButtonAction");
    
}


@end
