//
//  MovieListViewController.h
//  Mark
//
//  Created by hongqing on 16/3/13.
//  Copyright © 2016年 hongqing. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol infoDelegate <NSObject>
-(void)sendValue:(NSInteger *)index;
@end

@interface MovieListViewController : UITableViewController
@property(nonatomic,weak)id<infoDelegate> delegate;
@end
