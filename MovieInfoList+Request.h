//
//  MovieInfoList+Request.h
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "MovieInfoList.h"
#import "Config.h"
@interface MovieInfoList (Request)
+ (void)fetchMovieInfo:(NSString *)urlStr WithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock;
@end
