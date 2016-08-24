//
//  XNGlobalStatic.h
//  XNBaiduLocationManagerDemo
//
//  Created by xunan on 16/8/24.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XNGlobalStatic : NSObject

// set get
+ (void)setLattitude:(double)lattitude;

+ (double)getLattitude;

+ (void)setLongitude:(double)longitude;

+ (double)getLongitude;


@end
