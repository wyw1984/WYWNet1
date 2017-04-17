//
//  NetManager1.m
//  WYWNet1
//
//  Created by yanwu wei on 2017/4/17.
//  Copyright © 2017年 2126724184@qq.com. All rights reserved.
//

#import "NetManager1.h"
#import <WYWNet1/WYWNet1HttpTool.h>
#import <CommonCrypto/CommonCrypto.h>


@implementation NetManager1

+(void)addKey:(NSString *)key value:(NSString *)value params:(NSMutableDictionary *)params
{
    if(value != nil || [value isEqualToString:@""])
    {
        [params setObject:value forKey:key];
    }
}

+(void)MediaListByType:(int)type startPos:(int)startPos
               success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    NSString *url = @"";
    if(type == 0)
    {
        url = [NSString stringWithFormat:@"http://192.168.1.1/uav.cgi?op=select&type=pic&startPos=%i",startPos];
    }
    else if(type == 1)
    {
        url = [NSString stringWithFormat:@"http://192.168.1.1/uav.cgi?op=select&type=video&startPos=%i",startPos];
    }
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    
    // 发送请求
    [WYWNet1HttpTool get:url params:dic success:^(id json) {
        success(json);
    } failure:^(NSError *error) {
        failure(error);
    }];
}


+(void)DeleteMediaByTitle:(NSString *)title
                  success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    NSString *url = @"";
    if([title containsString:@".jpg"])
    {
        url = [NSString stringWithFormat:@"http://192.168.1.1/uav.cgi?op=delete&type=pic&name=%@",title];
    }
    else if([title containsString:@".mp4"])
    {
        url = [NSString stringWithFormat:@"http://192.168.1.1/uav.cgi?op=delete&type=video&name=%@",title];
    }
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    
    // 发送请求
    [WYWNet1HttpTool get:url params:dic success:^(id json) {
        success(json);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
