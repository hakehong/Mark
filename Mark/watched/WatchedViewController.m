//
//  WatchedViewController.m
//  Mark
//
//  Created by hongqing on 16/3/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "WatchedViewController.h"
#import "SettingViewController.h"
@interface WatchedViewController()
@property (strong, nonatomic) SettingViewController *settingView;
@end
@implementation WatchedViewController
-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setNav];
    
}
-(void)setNav
{
    UIImage *image1 =[[UIImage imageNamed:@"goSetIcon"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(PopSettingView)];
    UIImage *image2 =[UIImage imageNamed:@"mainIcon"];
    UIImageView *imageView =[[UIImageView alloc]initWithImage:image2];
    self.navigationItem.titleView =imageView;
    
    
}
-(void)PopSettingView
{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SettingViewController *myView = [story instantiateViewControllerWithIdentifier:@"setting"];
    [self presentModalViewController:myView
                            animated:YES];
    NSLog(@"PopSettingView");
}

@end
