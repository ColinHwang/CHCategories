//
//  UIColor+CHBase.h
//  Pods
//
//  Created by CHwang on 17/1/9.
//  
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CHBase)

#pragma mark - Base
@property (nonatomic, readonly) CGFloat ch_alpha; ///< 获取颜色的Alpha值[0,1]

@property (nonatomic, readonly) CGFloat ch_redOfRGBA;   ///< 获取RGB/RGBA中的R值[0,1]
@property (nonatomic, readonly) CGFloat ch_greenOfRGBA; ///< 获取RGB/RGBA中的G值[0,1]
@property (nonatomic, readonly) CGFloat ch_blueOfRGBA;  ///< 获取RGB/RGBA中的B值[0,1]

/**
 获取颜色的RGB值(以Hex表示:0x66ccff)

 @return 颜色的RGB值(以Hex表示:0x66ccff)
 */
- (uint32_t)ch_RGBValue;

/**
  获取颜色的RGBA值(以Hex表示:0x66ccffff)

 @return 颜色的RGBA值(以Hex表示:0x66ccffff)
 */
- (uint32_t)ch_RGBAValue;

/**
 获取表示RGB颜色的Hex值字符串(@"0066cc")

 @return RGB颜色的Hex值字符串(@"0066cc")
 */
- (NSString *)ch_hexString;

/**
 获取表示RGBA颜色的HEX值字符串(@"0066ccff")

 @return 表示RGBA颜色的HEX值字符串(@"0066ccff")
 */
- (NSString *)ch_hexStringWithAlpha;

#pragma mark - Check
/**
 判断两个颜色的RGBA值是否一致

 @param otherColor 其他颜色
 @return 相等返回YES, 否则返回NO
 */
- (BOOL)ch_isEqualToColor:(UIColor *)otherColor;

/**
 当前颜色是否为iOS系统的默认Tint Color
 */
@property (nonatomic, readonly) BOOL ch_isiOSDefaultTintColor;

@property (nonatomic, readonly) BOOL ch_isDarkColor;  ///< 当前颜色是否为深色
@property (nonatomic, readonly) BOOL ch_isLightColor; ///< 当前颜色是否为浅色

#pragma mark - Create
/**
 获取RGB随机颜色
 
 @return RGB随机颜色
 */
+ (UIColor *)ch_randomColor;

/**
 获取iOS系统的默认Tint Color

 @return iOS系统的默认Tint Color
 */
+ (UIColor *)ch_iOSDefaultTintColor;

/**
 获取RGB随机R值的颜色
 
 @return RGB随机R值的颜色
 */
+ (UIColor *)ch_colorWithRandomRed;

/**
 获取RGB随机G值的颜色
 
 @return RGB随机G值的颜色;
 */
+ (UIColor *)ch_colorWithRandomGreen;

/**
 获取RGB随机B值的颜色
 
 @return RGB随机B值的颜色
 */
+ (UIColor *)ch_colorWithRandomBlue;

/**
 根据颜色的RGB值(以Hex表示:0x66cc), 获取颜色

 @param RGBValue 颜色的RGB值(以Hex表示:0x66cc)
 @return 对应的颜色
 */
+ (UIColor *)ch_colorWithRGB:(uint32_t)RGBValue;

/**
 根据颜色的RGBA值(以Hex表示:0x66ccff), 获取颜色

 @param RGBAValue 颜色的RGBA值(以Hex表示:0x66ccff)
 @return 对应的颜色
 */
+ (UIColor *)ch_colorWithRGBA:(uint32_t)RGBAValue;

/**
 根据颜色的RGB值(以Hex表示:0x66cc)和Alpha值, 获取颜色

 @param RGBValue 颜色的RGB值(以Hex表示:0x66cc)
 @param alpha    Alpha值
 @return 对应的颜色
 */
+ (UIColor *)ch_colorWithRGB:(uint32_t)RGBValue alpha:(CGFloat)alpha;

/**
 根据Hex字符串(#000||#0000||#00000||#00000000||0X000||0X0000||0X00000||0X00000000), 获取颜色

 @param hexString Hex字符串
 @return 对应的颜色
 */
+ (nullable UIColor *)ch_colorWithHexString:(NSString *)hexString;

/**
 根据Hex(#000||#0000||#00000||#00000000||0X000||0X0000||0X00000||0X00000000)和Alpha值, 获取颜色

 @param hexString Hex字符串
 @param alpha     Alpha值
 @return 对应的颜色
 */
+ (nullable UIColor *)ch_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

/**
 根据前置颜色, 目标颜色及变化程度, 创建颜色

 @param fromColor 前置颜色
 @param toColor 目标颜色
 @param delta 变化程度[0,1]
 @return 对应的颜色
 */
+ (UIColor *)ch_colorWithColor:(UIColor *)fromColor
                       toColor:(UIColor *)toColor
                         delta:(CGFloat)delta;

/**
 根据前景色及后景色, 创建颜色

 @param frontColor 前景色
 @param backendColor 后景色
 @return 对应的颜色
 */
+ (UIColor *)ch_colorWithFrontColor:(UIColor *)frontColor backendColor:(UIColor *)backendColor;

#pragma mark - Modify
/**
 根据添加的颜色及混合模式, 获取修改后的颜色

 @param addColor  添加的颜色
 @param blendMode 混合模式
 @return 修改后的颜色
 */
- (UIColor *)ch_colorByAddColor:(UIColor *)addColor blendMode:(CGBlendMode)blendMode;

/**
 根据颜色Alpha值的变化, 获取修改后的颜色

 @param alphaDelta  Alpha的变化值[-1,1](0, 不变)
 @return 修改后的颜色
 */
- (UIColor *)ch_colorByChangeAlpha:(CGFloat)alphaDelta;

/**
 根据颜色Red值的变化, 获取修改后的颜色

 @param redDelta Red(RGB/RGBA)的变化值[-1,1](0, 不变)
 @return 修改后的颜色
 */
- (nullable UIColor *)ch_colorByChangeRed:(CGFloat)redDelta;

/**
 根据颜色Green值的变化, 获取修改后的颜色

 @param greenDelta Green(RGB/RGBA)的变化值[-1,1](0, 不变)
 @return 修改后的颜色
 */
- (nullable UIColor *)ch_colorByChangeGreen:(CGFloat)greenDelta;

/**
 根据颜色Blue值的变化, 获取修改后的颜色

 @param blueDelta Blue(RGB/RGBA)的变化值[-1,1](0, 不变)
 @return 修改后的颜色
 */
- (nullable UIColor *)ch_colorByChangeBlue:(CGFloat)blueDelta;

/**
 根据颜色Red, Green, Blue和Alpha值的变化, 获取修改后的颜色

 @param redDelta   Red(RGB/RGBA)的变化值[-1,1](0, 不变)
 @param greenDelta Green(RGB/RGBA)的变化值[-1,1](0, 不变)
 @param blueDelta  Blue(RGB/RGBA)的变化值[-1,1](0, 不变)
 @param alphaDelta Alpha的变化值[-1,1](0, 不变)
 @return 修改后的颜色
 */
- (nullable UIColor *)ch_colorByChangeRed:(CGFloat)redDelta
                                    green:(CGFloat)greenDelta
                                     blue:(CGFloat)blueDelta
                                    alpha:(CGFloat)alphaDelta;

/**
 根据目标颜色及变化程度, 获取修改后的颜色

 @param color 目标颜色
 @param delta 变化程度[0,1]
 @return 修改后的颜色
 */
- (UIColor *)ch_colorByChangeToColor:(UIColor *)color delta:(CGFloat)delta;

/**
 获取无Alpha通道的颜色

 @return 修改后的颜色
 */
- (UIColor *)ch_colorByChangeWithoutAlpha;

/**
 根据Alpha值, 获取叠加Alpha后放在白色背景颜色上的颜色

 @param alpha Alpha值
 @return 修改后的颜色
 */
- (UIColor *)ch_colorByAddToWhiteBackgroundColorWithAlpha:(CGFloat)alpha;

/**
 根据指定背景颜色及Alpha值, 获取叠加Alpha后放在指定背景颜色上的颜色

 @param backgroundColor 指定背景颜色
 @param alpha Alpha值
 @return 修改后的颜色
 */
- (UIColor *)ch_colorByAddToBackgroundColor:(UIColor *)backgroundColor alpha:(CGFloat)alpha;

/**
 获取颜色的反色

 @return 修改后的颜色
 */
- (UIColor *)ch_colorByInverted;

@end

NS_ASSUME_NONNULL_END
