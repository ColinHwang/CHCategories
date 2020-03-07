//
//  UITextField+CHBase.h
//  Pods
//
//  Created by CHwang on 17/1/10.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (CHBase)

#pragma mark - Base
@property (nonatomic, weak, readonly) UIButton *ch_clearButton; ///< 输入框的清除按钮
@property (nullable, nonatomic, strong) UIImage *ch_clearButtonImage; ///< 输入框的清除按钮图片

@property (nonatomic, assign) NSRange ch_selectedRange; ///< 文本的选中范围

/**
 选中所有的文本
 */
- (void)ch_selectAllText;

/**
 设置输入文本的最大长度

 @param length 最大长度
 */
- (void)ch_limitMaxLength:(int)length;

@end

NS_ASSUME_NONNULL_END
