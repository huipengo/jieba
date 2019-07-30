//
//  WBJieba.m
//  jieba_Example
//
//  Created by penghui8 on 2019/7/30.
//  Copyright © 2019 penghui8. All rights reserved.
//

#import "WBJieba.h"
#include <jieba/Segmentor.h>

@implementation WBJieba

void wb_jieba_init(NSString * _Nullable user_dict_path) {
    NSString *resource_path = [[NSBundle bundleForClass:WBJieba.class] resourcePath];
    NSString *dict_path     = [resource_path stringByAppendingPathComponent:@"iosjieba.bundle/dict/jieba.dict.small.utf8"];
    NSString *hmm_path      = [resource_path stringByAppendingPathComponent:@"iosjieba.bundle/dict/hmm_model.utf8"];
    
    if (user_dict_path == nil) {
        user_dict_path = [resource_path stringByAppendingPathComponent:@"iosjieba.bundle/dict/user.dict.utf8"];
    }
    
    const char *c_dict_path = dict_path.UTF8String;
    const char *c_hmm_path  = hmm_path.UTF8String;
    const char *c_user_dict_path = user_dict_path.UTF8String;
    
    JiebaInit(c_dict_path, c_hmm_path, c_user_dict_path);
}

NSString *wb_jieba_cut(NSString * _Nullable text) {
    if ((!text) || ((NSNull *)text == [NSNull null])) {
        return @"";
    }
    else if ([text isKindOfClass:NSString.class]) {
        if (text.length <= 0) {
            return @"";
        }
    }
    const char *sentence = text.UTF8String;
    std::vector<std::string> words;
    JiebaCut(sentence, words);
    std::string result;
    result << words;
    
    NSString *c_string = [NSString stringWithUTF8String:result.c_str()];
    
    c_string = [c_string stringByReplacingOccurrencesOfString:@"[" withString:@""];
    c_string = [c_string stringByReplacingOccurrencesOfString:@"]" withString:@""];
    c_string = [c_string stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    c_string = [c_string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return c_string;
}

NSArray<NSString *> *wb_tokenizer_ref(NSString * _Nullable text) {
    NSMutableArray *keywords = [[NSMutableArray alloc] init];
    /** 创建分词器 */
    CFStringTokenizerRef ref = CFStringTokenizerCreate(NULL,  (__bridge CFStringRef)text, CFRangeMake(0, text.length), kCFStringTokenizerUnitWordBoundary, NULL);
    /** 当前分词的位置 */
    CFRange range;
    /** 获取第一个分词的范围 */
    CFStringTokenizerAdvanceToNextToken(ref);
    range = CFStringTokenizerGetCurrentTokenRange(ref);
    
    /** 循环遍历获取所有分词并记录到数组中 */
    NSString *keyWord;
    while (range.length > 0) {
        keyWord = [text substringWithRange:NSMakeRange(range.location, range.length)];
        [keywords addObject:keyWord];
        CFStringTokenizerAdvanceToNextToken(ref);
        range = CFStringTokenizerGetCurrentTokenRange(ref);
    }
    
    return keywords;
}

@end
