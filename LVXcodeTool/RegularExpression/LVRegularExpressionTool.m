//
//  LVRegularExpressionTool.m
//  LVXcodeTool
//
//  Created by liuchunlao on 15/7/29.
//  Copyright (c) 2015年 liuchunlao. All rights reserved.
//

#import "LVRegularExpressionTool.h"

@implementation LVRegularExpressionTool

+ (BOOL)judgeOnlyIncludeCEN:(NSString *)str
{
    NSString * regex = @"[a-zA-Z0-9\u3400-\u9fff]+";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    if(![pred evaluateWithObject:str]) {
        return NO;
    }
    return YES;
}

//判断字符串是否是中文汉字+英文+数字+下划线 (特别针对iOS的九宫格修改过)
//用户名适配9宫格    //字符＝ 中文 || 字母 || 数字 || 下划线
+ (BOOL)isChineseCharacterAndLettersAndNumbersAndUnderScore:(NSString *)string
{
    NSString *other = @"";
    NSInteger len=string.length;
    for(int i=0;i<len;i++)
    {
        unichar a=[string characterAtIndex:i];
        if(!((isalpha(a))
             ||(isalnum(a))
             ||((a=='_'))
             ||((a >= 0x4e00 && a <= 0x9fa6))
             ||((a >= 0x278b && a <= 0x2792))  //iOS9宫格内8个键
             ||((a >= 0x2f00 && a <= 0x2f03))  //iOS9宫格内笔画：横竖撇捺‘—— ｜ 丿 、‘
             ||([other rangeOfString:string].location != NSNotFound)
             ))
            return NO;
    }
    return YES;
}


@end
