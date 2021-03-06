//
//  ViewController.m
//  ViewPager
//
//  Created by liu zheng on 15/7/27.
//  Copyright (c) 2015年 liu zheng. All rights reserved.
//

#import "ViewController.h"
#import "PagerViewController.h"
#import "DetailPageViewController.h"

@interface ViewController () <ViewPagerDataSource>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource  = self;
    
    NSArray *data = @[@"精选",@"独家",@"最新鲜",@"神分类",@"最强吐槽",@"恶搞新编",@"爆笑网聚",@"趣事精选"];
    [self setTabData:data];
}



- (UIViewController *)viewPager:(UIViewController *)viewPager contentViewControllerForTabAtIndex:(NSUInteger)index {
    DetailPageViewController *controller = [[DetailPageViewController alloc]init:index];
    return controller;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
