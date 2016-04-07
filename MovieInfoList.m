//
//  MovieInfoList.m
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "MovieInfoList.h"
#import "MovieInfo.h"
@implementation MovieInfoList
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"data" : MovieInfo.class
             };
}
@end
