//
//  XNBaiduLocationManager.m
//  XNBaiduLocationManagerDemo
//
//  Created by xunan on 16/8/24.
//  Copyright © 2016年 xunan. All rights reserved.
//

#import "XNBaiduLocationManager.h"
#import "XNGlobalStatic.h"

@interface XNBaiduLocationManager()<BMKLocationServiceDelegate>

@property (nonatomic, strong) BMKLocationService *locService;

@end

@implementation XNBaiduLocationManager

+ (id)shareInstance {
    static XNBaiduLocationManager *__shareInstance;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        __shareInstance = [[XNBaiduLocationManager alloc] init];
    });
    return __shareInstance;
}

- (void)start {
    _locService = [[BMKLocationService alloc] init];
    _locService.delegate = self;
    [_locService startUserLocationService];
}

- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation {
    NSLog(@"%@",userLocation);
    [XNGlobalStatic setLattitude:userLocation.location.coordinate.latitude];
    [XNGlobalStatic setLongitude:userLocation.location.coordinate.longitude];
    NSLog(@"%f---%f",[XNGlobalStatic getLattitude],[XNGlobalStatic getLongitude]);
}

@end
