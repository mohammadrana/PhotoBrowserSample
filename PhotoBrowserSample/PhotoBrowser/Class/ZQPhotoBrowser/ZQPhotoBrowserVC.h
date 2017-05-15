//
//  ZQPhotoBrowserVC.h
//  qzc
//
//  Created by jxm apple on 16/11/28.
//  Copyright © 2016年 xinggenji. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZQPhotoBrowserModel;

@interface ZQPhotoBrowserVC : UIViewController

@property (assign) int index;
@property (nonatomic, copy)  NSArray <ZQPhotoBrowserModel*>* models;

- (void) selectedIndex:(int)index;


@end
