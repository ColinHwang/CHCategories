//
//  UISwipeGestureRecognizer+CHBase.h
//  Pods
//
//  Created by CHwang on 17/1/10.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

UIKIT_EXTERN const UISwipeGestureRecognizerDirection CHUISwipeGestureRecognizerDirectionHorizontal; ///< 水平轻扫方向(UISwipeGestureRecognizerDirectionLeft|UISwipeGestureRecognizerDirectionRight)
UIKIT_EXTERN const UISwipeGestureRecognizerDirection CHUISwipeGestureRecognizerDirectionVertical;   ///< 垂直轻扫方向(UISwipeGestureRecognizerDirectionUp|UISwipeGestureRecognizerDirectionDown)

@interface UISwipeGestureRecognizer (CHBase)

#pragma mark - Base

/**
 根据轻扫方向, target和action, 创建轻扫手势响应者

 @param direction 轻扫方向
 @param target    target
 @param action    action
 @return 轻扫手势响应者
 */
+ (instancetype)ch_swipeGestureRecognizerWithDirection:(UISwipeGestureRecognizerDirection)direction
                                                target:(id)target
                                                action:(SEL)action;

/**
 根据轻扫方向和回调事件, 创建轻扫手势响应者

 @param direction 轻扫方向
 @param block     手势回调事件
 @return 轻扫手势响应者
 */
+ (instancetype)ch_swipeGestureRecognizerWithDirection:(UISwipeGestureRecognizerDirection)direction actionBlock:(void (^)(id sender))block;

/**
 根据轻扫方向, target和action, 初始化轻扫手势响应者

 @param direction 轻扫方向
 @param target    target
 @param action    action
 @return 轻扫手势响应者
 */
- (instancetype)initWithDirection:(UISwipeGestureRecognizerDirection)direction
                           target:(id)target
                           action:(SEL)action;

/**
 根据轻扫方向和回调事件, 创建轻扫手势响应者

 @param direction 轻扫方向
 @param block     手势回调事件
 @return 轻扫手势响应者
 */
- (instancetype)initWithDirection:(UISwipeGestureRecognizerDirection)direction actionBlock:(void (^)(id sender))block;

@end

NS_ASSUME_NONNULL_END
