//
//  HqUITabBarController.m
//  Mark
//
//  Created by hongqing on 16/3/5.
//  Copyright © 2016年 hongqing. All rights reserved.
//
#define DownColor [UIColor colorWithRed:73.0/255.0 green:46.0/255.0 blue:105.0/255.0 alpha:1]
#define UpColor [UIColor colorWithRed:34.0/255.0 green:34.0/255.0 blue:34.0/255.0 alpha:1]
#import "WantViewController.h"
#import "WatchedViewController.h"
#import "SearchViewController.h"
#import "CollectionViewController.h"
#import "HqUITabBarController.h"

@implementation HqUITabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIColor *titleHighlightedColor = UpColor;
    UIColor *titleNomalColor = DownColor;
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:titleNomalColor, UITextAttributeTextColor,nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:titleHighlightedColor, UITextAttributeTextColor,
        nil] forState:UIControlStateSelected];
}


@end
