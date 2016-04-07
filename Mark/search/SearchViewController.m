//
//  ViewController.m
//  Mark
//
//  Created by hongqing on 16/3/5.
//  Copyright © 2016年 hongqing. All rights reserved.
//
#define Height [UIScreen mainScreen].bounds.size.height
#define Width [UIScreen mainScreen].bounds.size.width
#define DownColor [UIColor colorWithRed:73.0/255.0 green:46.0/255.0 blue:105.0/255.0 alpha:1]
#define UpColor [UIColor colorWithRed:34.0/255.0 green:34.0/255.0 blue:34.0/255.0 alpha:1]
#import "SearchViewController.h"
#import "MovieListViewController.h"
@interface SearchViewController ()


@property (weak, nonatomic) IBOutlet UITextField *searchTF;

- (IBAction)dismissSearch:(UIBarButtonItem *)sender;

- (IBAction)movieListBtn:(UIButton *)sender;

@property(nonatomic,strong)UILabel *label;
@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)movieListBtn:(UIButton *)sender {
    MovieListViewController *movieList =[[MovieListViewController alloc]init];
    [self.navigationController pushViewController:movieList animated:YES];
}
- (IBAction)dismissSearch:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
