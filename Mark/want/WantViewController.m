//
//  WantViewController.m
//  Mark
//
//  Created by hongqing on 16/3/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#import "WantViewController.h"
#import "SettingViewController.h"
#import "Demo1Cell.h"
#define  Demo1CellID @"demo1_cell_id"
@interface WantViewController()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic , strong) UICollectionView *collectionView;
@end
@implementation WantViewController
-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setNav];
      [self initView];
 
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

- (void)initView{
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(SCREEN_WIDTH/2-10, SCREEN_WIDTH/2-10);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.minimumLineSpacing = 20;//设置每个item之间的间距
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH, SCREEN_HEIGHT-20) collectionViewLayout:flowLayout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    collectionView.showsVerticalScrollIndicator = YES;
    collectionView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:collectionView];
    
    _collectionView=collectionView;
    
    [self.collectionView registerClass:[Demo1Cell class] forCellWithReuseIdentifier:Demo1CellID];
}

#pragma mark- UICollectionViewDataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    Demo1Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:Demo1CellID forIndexPath:indexPath];
    if(!cell){
        cell = [[Demo1Cell alloc] init];
    }
    [cell setImageName:[NSString stringWithFormat:@"%zi",indexPath.row] content:[NSString stringWithFormat:@"{%zi,%zi}",indexPath.section,indexPath.row]];
    return cell;
}
@end
