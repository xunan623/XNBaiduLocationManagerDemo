//
//  XNGlobalStatic.m
//  XNBaiduLocationManagerDemo
//
//  Created by xunan on 16/8/24.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import "XNGlobalStatic.h"

static double vsLatitude = 0.0;     // 纬度
static double vsLongitude = 0.0;    // 经度

@implementation XNGlobalStatic

+ (void)setLattitude:(double)lattitude {
    vsLatitude = lattitude;
}
+ (void)setLongitude:(double)longitude {
    vsLongitude = longitude;
}
+ (double)getLattitude {
    return vsLatitude;
}
+ (double)getLongitude {
    return vsLongitude;
}

@end
