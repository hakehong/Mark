//
//  MovieListViewController.m
//  Mark
//
//  Created by hongqing on 16/3/13.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "MovieListViewController.h"
#import "movieList.h"
#import "movie.h"
#import "movieList+Request.h"
#import "NSObject+YYModel.h"
#import "MovieListViewCell.h"
#import "YYWebImage.h"
#import "AFHTTPSessionManager.h"
#import "MovieInfoViewController.h"
static NSString * const CellID = @"CellID";

@interface MovieListViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    movieList *list;
}
@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate =self;
    self.tableView.dataSource =self;
    [movieList fetchMovieWithCompletionBlock:^(id returnValue) {
      list = [movieList yy_modelWithDictionary:returnValue];
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
  return list.data.count;
//    NSLog(@"%@",list.data.count);
  
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    if (cell ==nil) {
        cell = (MovieListViewCell *)[[[NSBundle mainBundle] loadNibNamed:@"listView" owner:self options:nil] lastObject];
    }
    movie *movieInfo =list.data[indexPath.row];
    cell.movieImage.yy_imageURL=[NSURL URLWithString:movieInfo.image_url];
    cell.movieLabel.text =movieInfo.name;
//    cell.movieLabel.text=@"hong";
//    cell.movieImage.image=[UIImage imageNamed:@"guidePageBackImage"];
    return cell;

}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 200;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MovieInfoViewController *infoView =[MovieInfoViewController new];
    [self.navigationController pushViewController:infoView animated:YES];
    NSInteger *currentIndex =21 -indexPath.row;
    NSNumber *number =[NSNumber numberWithInteger:currentIndex];
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    [defaults setObject:number forKey:@"index"];
    [defaults synchronize];
//    [self.delegate sendValue:currentIndex];
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
