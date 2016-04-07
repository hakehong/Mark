//
//  movieList.m
//  Mark
//
//  Created by hongqing on 16/3/12.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "movieList.h"
#import "movie.h"
@implementation movieList
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"data" : movie.class
             };
}
@end
