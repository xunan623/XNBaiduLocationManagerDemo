//
//  XNBaiduLocationManager.h
//  XNBaiduLocationManagerDemo
//
//  Created by xunan on 16/8/24.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BaiduMapAPI_Location/BMKLocationService.h>
#import <BaiduMapAPI_Map/BMKMapView.h>

@interface XNBaiduLocationManager : NSObject

+ (id)shareInstance;

- (void)start;

@end
