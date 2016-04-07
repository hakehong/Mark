//
//  MovieInfoViewController.m
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "MovieInfoViewController.h"
#import "MovieInfoCell.h"
#import "MovieListViewController.h"
#import "movieList+Request.h"
#import "MovieInfoList.h"
#import "MovieInfoList+Request.h"
#import "NSObject+YYModel.h"
#import "YYWebImage.h"
#import "MovieInfo.h"
static NSString * const InfoCellID = @"InfoCellID";

@interface MovieInfoViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    MovieInfoList *infoList;
}
@property(nonatomic,assign )NSNumber * index;
@end

@implementation MovieInfoViewController
//-(void)sendValue:(NSInteger *)index
//{
//    MovieListViewController *viewController =[MovieListViewController new];
//    viewController.delegate =self;
//    self.index =index;
//    NSLog(@"%d",self.index);
//    
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate =self;
    self.tableView.dataSource =self;
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    self.index = [defaults stringForKey:@"index"];
    NSString *str =[NSString stringWithFormat:@"http://114.215.104.21/v030/singles/%@/start/0/count/10?",self.index];
//    NSLog(@"%@",str);
   [MovieInfoList fetchMovieInfo:str WithCompletionBlock:^(id returnValue) {
       infoList = [MovieInfoList yy_modelWithDictionary:returnValue];
       [self.tableView reloadData];
   } WithFailureBlock:^(NSError *error) {
        NSLog(@"%@",error);
   }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
    //    NSLog(@"%@",list.data.count);
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:InfoCellID];
    if (cell ==nil) {
        cell = (MovieInfoCell *)[[[NSBundle mainBundle] loadNibNamed:@"MovieInfo" owner:self options:nil] lastObject];
    }
     MovieInfo *movieInfo =infoList.data[indexPath.row];
    cell.infoImage.yy_imageURL =[NSURL URLWithString:movieInfo.image_url];
    cell.recommend_reson.text =movieInfo.recommend_reson;
    cell.name.text =movieInfo.name;
    cell.pubdate.text =movieInfo.pubdate;
    cell.directors.text =movieInfo.directors;
    cell.writers.text =movieInfo.writers;
    cell.casts.text =movieInfo.casts;
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 300;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation



@end
