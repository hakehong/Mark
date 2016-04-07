//
//  movieList+Request.h
//  Mark
//
//  Created by hongqing on 16/4/5.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "movieList.h"
#import "Config.h"
@interface movieList (Request)
+ (void)fetchMovieWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock;

@end
