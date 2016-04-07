//
//  MovieInfo.h
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieInfo : NSObject
@property(nonatomic,assign) NSNumber *db_num;
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *pubdate;
@property(nonatomic,copy)NSString *image_url;
@property(nonatomic,copy) NSString *directors;
@property(nonatomic,copy) NSString *writers;
@property(nonatomic,copy) NSString *casts;
@property(nonatomic,copy) NSString *recommend_reson;
//添加一个是否想看的选项

@end
