//
//  MovieInfoCell.h
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieInfoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *infoImage;
@property (weak, nonatomic) IBOutlet UITextView *recommend_reson;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *pubdate;

@property (weak, nonatomic) IBOutlet UILabel *directors;

@property (weak, nonatomic) IBOutlet UILabel *writers;
@property (weak, nonatomic) IBOutlet UILabel *casts;

@end
