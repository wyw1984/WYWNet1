//
//  WYWNet1HttpHelper.h
//  Pods
//
//  Created by yanwu wei on 2017/4/17.
//
//

#import <Foundation/Foundation.h>

@interface WYWNet1HttpHelper : NSObject

+(void)log:(id)responseObject url:(NSString *)url;

+(void)logError:(NSError *)error url:(NSString *)url;

@end
