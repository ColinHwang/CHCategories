//
//  UITextView+CHBase.h
//  Pods
//
//  Created by CHwang on 17/4/28.
//
//

#import <UIKit/UIKit.h>

@interface UITextView (CHBase)

#pragma mark - Base
/**
 获取文本高亮范围(无则为{0,0})
 */
@property (nonatomic, readonly) NSRange ch_markedRange;

@end
