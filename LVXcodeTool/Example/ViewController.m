//
//  ViewController.m
//  LVXcodeTool
//
//  Created by liuchunlao on 15/7/29.
//  Copyright (c) 2015年 liuchunlao. All rights reserved.
//

#import "ViewController.h"

#import "LVRegularExpressionTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *str1 = @"lsjdfsjkfdlasj___1213";
    NSString *str2 = @"12123";
    NSString *str3 = @"ab//c";
    
    NSLog(@"str1 = %zd, str2 = %zd, str3 = %zd", [LVRegularExpressionTool isChineseCharacterAndLettersAndNumbersAndUnderScore:str1], [LVRegularExpressionTool isChineseCharacterAndLettersAndNumbersAndUnderScore:str2], [LVRegularExpressionTool isChineseCharacterAndLettersAndNumbersAndUnderScore:str3]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
