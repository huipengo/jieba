#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "DictTrie.hpp"
#import "FullSegment.hpp"
#import "HMMSegment.hpp"
#import "ISegment.hpp"
#import "KeywordExtractor.hpp"
#import "ArgvContext.hpp"
#import "BlockingQueue.hpp"
#import "BoundedQueue.hpp"
#import "CastFloat.hpp"
#import "Condition.hpp"
#import "Config.hpp"
#import "HandyMacro.hpp"
#import "InitOnOff.hpp"
#import "LocalVector.hpp"
#import "Logger.hpp"
#import "Md5.hpp"
#import "MutexLock.hpp"
#import "MysqlClient.hpp"
#import "NonCopyable.hpp"
#import "StdExtension.hpp"
#import "StringUtil.hpp"
#import "Thread.hpp"
#import "ThreadPool.hpp"
#import "MixSegment.hpp"
#import "MPSegment.hpp"
#import "PosTagger.hpp"
#import "QuerySegment.hpp"
#import "SegmentBase.hpp"
#import "TransCode.hpp"
#import "Trie.hpp"
#import "Segmentor.h"
#import "WBJieba.h"

FOUNDATION_EXPORT double jiebaVersionNumber;
FOUNDATION_EXPORT const unsigned char jiebaVersionString[];

