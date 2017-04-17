//
//  WYWNet1HttpHelper.m
//  Pods
//
//  Created by yanwu wei on 2017/4/17.
//
//

#import "WYWNet1HttpHelper.h"

@implementation WYWNet1HttpHelper

+(void)log:(id)responseObject url:(NSString *)url
{
    
    //#ifdef DEBUG
    NSLog(@"\r\n\r\n%@\r\n\r\n",url);
    
    NSData *theData =  [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
    NSString *str = [[NSString alloc] initWithData:theData encoding:NSUTF8StringEncoding];
    
    NSLog(@"\r\n\r\n%@\r\n\r\n",str);
    //#endif
    
}



+(void)logError:(NSError *)error url:(NSString *)url
{
    
#ifdef DEBUG
    NSLog(@"\r\n\r\n%@\r\n\r\n",url);
    
    NSLog(@"\r\n\r\n%@\r\n\r\n",error);
#endif
    
}

@end
