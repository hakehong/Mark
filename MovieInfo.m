//
//  MovieInfo.m
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "MovieInfo.h"

@implementation MovieInfo
+(NSDictionary *)modelCustomPropertyMapper
{
    return @{@"db_num":@"da_num",
             @"name":@"name",
             @"pubdate":@"pubdate",
             @"image_url":@"img_url",
             @"directors":@"directors",
             @"writers":@"writers",
             @"casts":@"casts",
             @"recommend_reson":@"recommend_reson"
             
             };
}
@end
