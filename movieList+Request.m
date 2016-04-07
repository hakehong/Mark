//
//  movieList+Request.m
//  Mark
//
//  Created by hongqing on 16/4/5.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "movieList+Request.h"
#import "AFHTTPSessionManager.h"

static NSString * const MovieListURL =@"http://114.215.104.21/v030/singles/list/start/0/count/30?" ;
@implementation movieList (Request)
+ (void)fetchMovieWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock
{
    AFHTTPSessionManager *session= [AFHTTPSessionManager manager];
    
    [session GET:MovieListURL parameters:nil success:^(NSURLSessionDataTask * _Nonnull operation, id  _Nonnull responseObject) {
        if(successBlock){
        successBlock(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable operation, NSError * _Nonnull error) {
        if (failureBlock) {
            failureBlock(error);
        }
    }];
}
@end
