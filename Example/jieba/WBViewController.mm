//
//  WBViewController.m
//  jieba
//
//  Created by penghui8 on 07/30/2019.
//  Copyright (c) 2019 penghui8. All rights reserved.
//

#import "WBViewController.h"
#import "WBJieba.h"

@interface WBViewController ()

@end

@implementation WBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    wb_jieba_init(nil);
    
    NSString *text = @"我想查看下云计算";
    NSString *jieba = wb_jieba_cut(text);
    
    NSArray *array = [jieba componentsSeparatedByString:@","];
    
    NSArray *a = @[@"我", @"想", @"查看", @"下", @"云计算"];
    
    NSLog(@"---------:%@ \n%@", array, a);
}

@end
