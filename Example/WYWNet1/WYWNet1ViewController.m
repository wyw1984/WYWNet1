//
//  WYWNet1ViewController.m
//  WYWNet1
//
//  Created by 2126724184@qq.com on 04/17/2017.
//  Copyright (c) 2017 2126724184@qq.com. All rights reserved.
//

#import "WYWNet1ViewController.h"
#import "NetManager1.h"
@interface WYWNet1ViewController ()

@end

@implementation WYWNet1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [NetManager1 DeleteMediaByTitle:@"111" success:^(id json) {
        NSLog(@"%s, %d 从飞机删除成功", __func__, __LINE__);
        
        
    } failure:^(NSError *error) {
        
        NSLog(@"%s, %d 从飞机删除失败%@", __func__, __LINE__, error);
        
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
