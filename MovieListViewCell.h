//
//  MovieListViewCell.h
//  Mark
//
//  Created by hongqing on 16/3/13.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieListViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;

@property (weak, nonatomic) IBOutlet UILabel *movieLabel;
@end
