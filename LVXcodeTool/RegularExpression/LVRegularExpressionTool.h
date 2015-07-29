//
//  LVRegularExpressionTool.h
//  LVXcodeTool
//
//  Created by liuchunlao on 15/7/29.
//  Copyright (c) 2015年 liuchunlao. All rights reserved.
//  正则表达式的工具类

#import <Foundation/Foundation.h>

@interface LVRegularExpressionTool : NSObject

/**
 *  判断字符串中是否只含有中文、英文、数字
 *
 *  @param str 字符串
 *
 *  @return 如果只含有中英数字，返回YES, 否则返回NO
 */
+ (BOOL)judgeOnlyIncludeCEN:(NSString *)str;


/**
 *  判断字符串是否是中文汉字+英文+数字+下划线（特别针对iOS的九宫格修改过）
 *
 *  @param string 字符串（如用户名）
 *
 *  @return 返回是否符合规则  //字符＝ 中文 || 字母 || 数字 || 下划线
 */
+ (BOOL)isChineseCharacterAndLettersAndNumbersAndUnderScore:(NSString *)string;


@end
