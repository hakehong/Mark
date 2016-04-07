//
//  MovieInfoList+Request.m
//  Mark
//
//  Created by hongqing on 16/4/6.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import "MovieInfoList+Request.h"
#import "AFHTTPSessionManager.h"

@implementation MovieInfoList (Request)
+ (void)fetchMovieInfo:(NSString *)urlStr WithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock
{
    AFHTTPSessionManager *session= [AFHTTPSessionManager manager];
    
    [session GET:urlStr parameters:nil success:^(NSURLSessionDataTask * _Nonnull operation, id  _Nonnull responseObject) {
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
