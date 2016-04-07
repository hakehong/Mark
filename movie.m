
//
//  movie.m
//  Mark
//
//  Created by hongqing on 16/3/13.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "movie.h"

@implementation movie
+(NSDictionary *)modelCustomPropertyMapper
{
    return @{@"image_id":@"id",
             @"name":@"name",
             @"image_url":@"img_url"
             
             
             };
}
@end
