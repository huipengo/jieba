//
//  WBJieba.h
//  jieba_Example
//
//  Created by penghui8 on 2019/7/30.
//  Copyright © 2019 penghui8. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WBJieba : NSObject

void wb_jieba_init(NSString * _Nullable user_dict_path);

NSString *wb_jieba_cut(NSString * _Nullable text);

NSArray<NSString *> *wb_tokenizer_ref(NSString * _Nullable text);

@end

NS_ASSUME_NONNULL_END
