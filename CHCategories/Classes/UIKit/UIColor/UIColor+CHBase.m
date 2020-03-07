//
//  UIColor+CHBase.m
//  Pods
//
//  Created by CHwang on 17/1/9.
//  
//

#import "UIColor+CHBase.h"

/**
 *  比较颜色value值, 若在0-1之间返回value，若大于1返回1, 小于0返回0
 */
#ifndef CH_CLAMP_COLOR_VALUE
#define CH_CLAMP_COLOR_VALUE(v) (v) = (v) < 0 ? 0 : (v) > 1 ? 1 : (v)
#endif

@implementation UIColor (CHBase)

#pragma mark - Base
- (CGFloat)ch_alpha {
    return CGColorGetAlpha(self.CGColor);
}

- (CGFloat)ch_redOfRGBA {
    CGFloat red = 0, green, blue, alpha;
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    return red;
}

- (CGFloat)ch_greenOfRGBA {
    CGFloat red, green = 0, blue, alpha;
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    return green;
}

- (CGFloat)ch_blueOfRGBA {
    CGFloat red, green, blue = 0, alpha;
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    return blue;
}

- (uint32_t)ch_RGBValue {
    CGFloat red = 0, green = 0, blue = 0, alpha = 0;
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    int8_t rRed = red * 255;
    uint8_t gGreen = green * 255;
    uint8_t bBlue = blue * 255;
    return (rRed << 16) + (gGreen << 8) + bBlue;
}

- (uint32_t)ch_RGBAValue {
    CGFloat red = 0, green = 0, blue = 0, alpha = 0;
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    int8_t rRed = red * 255;
    uint8_t gGreen = green * 255;
    uint8_t bBlue = blue * 255;
    uint8_t aAlpha = alpha * 255;
    return (rRed << 24) + (gGreen << 16) + (bBlue << 8) + aAlpha;
}

- (NSString *)ch_hexString {
    return [self _ch_hexStringWithAlpha:NO];
}

- (NSString *)ch_hexStringWithAlpha {
    return [self _ch_hexStringWithAlpha:YES];
}

- (NSString *)_ch_hexStringWithAlpha:(BOOL)withAlpha {
    CGColorRef color = self.CGColor;
    size_t count = CGColorGetNumberOfComponents(color); // CGColorGetNumberOfComponents() -> 获得CGColorRef的中包含的颜色组成部分的个数(包含Alpha)
    const CGFloat *components = CGColorGetComponents(color); //  CGColorGetComponents() -> 获取实际的颜色组成部分的数组(包含Alpha)
    static NSString *stringFormat = @"%02x%02x%02x";
    NSString *hexString = nil;
    if (count == 2) {
        NSUInteger white = (NSUInteger)(components[0] * 255.0f);
        hexString = [NSString stringWithFormat:stringFormat, white, white, white];
    } else if (count == 4) {
        hexString = [NSString stringWithFormat:stringFormat,
                     (NSUInteger)(components[0] * 255.0f), // R
                     (NSUInteger)(components[1] * 255.0f), // G
                     (NSUInteger)(components[2] * 255.0f)]; // B
    }
    
    if (hexString && withAlpha) {
        hexString = [hexString stringByAppendingFormat:@"%02lx",
                     (unsigned long)(self.ch_alpha * 255.0 + 0.5)];
    }
    return hexString;
}

#pragma mark - Check
- (BOOL)ch_isEqualToColor:(UIColor *)otherColor {
    if (!otherColor) return NO;
    if (![otherColor isKindOfClass:[UIColor class]]) return NO;
    if (self == otherColor) return YES;

    return self.ch_RGBAValue == otherColor.ch_RGBAValue;
}

- (BOOL)ch_isiOSDefaultTintColor {
    return [self ch_isEqualToColor:[UIColor ch_iOSDefaultTintColor]];
}

- (BOOL)ch_isDarkColor {
    /*
     http://stackoverflow.com/questions/19456288/text-color-based-on-background-image
     */
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    if ([self getRed:&red green:&green blue:&blue alpha:&alpha]) {
        float referenceValue = 0.411;
        float colorDelta = ((red * 0.299) + (green * 0.587) + (blue * 0.114));
        return 1.0 - colorDelta > referenceValue;
    }
    return YES;
}

- (BOOL)ch_isLightColor {
    return !self.ch_isDarkColor;
}

#pragma mark - Create
+ (UIColor *)ch_randomColor {
    return [UIColor _ch_colorWithRandomRed:YES randomGreen:YES randomBlue:YES randomAlpha:NO];
}

+ (UIColor *)ch_iOSDefaultTintColor {
    static UIColor *color;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIView *view = [[UIView alloc] init];
        color = view.tintColor;
    });
    return color;
}

+ (UIColor *)ch_colorWithRandomRed {
    return [UIColor _ch_colorWithRandomRed:YES randomGreen:NO randomBlue:NO randomAlpha:NO];
}

+ (UIColor *)ch_colorWithRandomGreen {
    return [UIColor _ch_colorWithRandomRed:NO randomGreen:YES randomBlue:NO randomAlpha:NO];
}

+ (UIColor *)ch_colorWithRandomBlue {
    return [UIColor _ch_colorWithRandomRed:NO randomGreen:NO randomBlue:YES randomAlpha:NO];
}

+ (UIColor *)_ch_colorWithRandomRed:(BOOL)isRed randomGreen:(BOOL)isGreen randomBlue:(BOOL)isBlue randomAlpha:(BOOL)isAlpha {
    CGFloat red, green, blue, alpha;
    red = green = blue = alpha = 255.f;
    
    if (isRed) red = arc4random_uniform(256);
    if (isGreen) green = arc4random_uniform(256);
    if (isBlue) blue = arc4random_uniform(256);
    if (isAlpha) alpha = arc4random_uniform(256);
    
    return [UIColor colorWithRed:red/255.f green:green/255.f blue:blue/255.f alpha:alpha/255.f];
}

+ (UIColor *)ch_colorWithRGB:(uint32_t)RGBValue {
    return [UIColor colorWithRed:((RGBValue & 0xFF0000) >> 16) / 255.0f
                           green:((RGBValue & 0xFF00) >> 8) / 255.0f
                            blue:(RGBValue & 0xFF) / 255.0f
                           alpha:1];
}

+ (UIColor *)ch_colorWithRGBA:(uint32_t)RGBAValue {
    return [UIColor colorWithRed:((RGBAValue & 0xFF000000) >> 24) / 255.0f
                           green:((RGBAValue & 0xFF0000) >> 16) / 255.0f
                            blue:((RGBAValue & 0xFF00) >> 8) / 255.0f
                           alpha:(RGBAValue & 0xFF) / 255.0f];
}

+ (UIColor *)ch_colorWithRGB:(uint32_t)RGBValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((RGBValue & 0xFF0000) >> 16) / 255.0f
                           green:((RGBValue & 0xFF00) >> 8) / 255.0f
                            blue:(RGBValue & 0xFF) / 255.0f
                           alpha:alpha];
}

NS_INLINE NSUInteger CHHexStringToInt(NSString *hexString) {
    uint32_t result = 0;
    sscanf([hexString UTF8String], "%X", &result);
    return result;
}

static BOOL CHHexStringToRGBA(NSString *hexString,
                            CGFloat *red, CGFloat *green, CGFloat *blue, CGFloat *alpha) {
    hexString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString]; // 去空, 大写
    if ([hexString hasPrefix:@"#"]) {
        hexString = [hexString substringFromIndex:1]; // #00FFDD -> 00FFDD
    } else if ([hexString hasPrefix:@"0X"]) { // 0X00FFDD -> 00FFDD
        hexString = [hexString substringFromIndex:2];
    }
    
    NSUInteger length = [hexString length];
    //         RGB            RGBA          RRGGBB        RRGGBBAA
    if (length != 3 && length != 4 && length != 6 && length != 8) {
        return NO;
    }
    
    // RGB,RGBA,RRGGBB,RRGGBBAA
    // RGB||RGBA
    if (length < 5)  {
        *red = CHHexStringToInt([hexString substringWithRange:NSMakeRange(0, 1)]) / 255.0f; // R
        *green = CHHexStringToInt([hexString substringWithRange:NSMakeRange(1, 1)]) / 255.0f; // G
        *blue = CHHexStringToInt([hexString substringWithRange:NSMakeRange(2, 1)]) / 255.0f; // B
        if (length == 4)  *alpha = CHHexStringToInt([hexString substringWithRange:NSMakeRange(3, 1)]) / 255.0f; // A
        else *alpha = 1;
    } else {
        // RRGGBB||RRGGBBAA
        *red = CHHexStringToInt([hexString substringWithRange:NSMakeRange(0, 2)]) / 255.0f; // R
        *green = CHHexStringToInt([hexString substringWithRange:NSMakeRange(2, 2)]) / 255.0f; // G
        *blue = CHHexStringToInt([hexString substringWithRange:NSMakeRange(4, 2)]) / 255.0f; // B
        if (length == 8) *alpha = CHHexStringToInt([hexString substringWithRange:NSMakeRange(6, 2)]) / 255.0f; // A
        else *alpha = 1;
    }
    return YES;
}

+ (UIColor *)ch_colorWithHexString:(NSString *)hexString {
    CGFloat red, green, blue, alpha;
    if (CHHexStringToRGBA(hexString, &red, &green, &blue, &alpha)) {
        return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    }
    return nil;
}

+ (UIColor *)ch_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    CGFloat red, green, blue, aAlpha;
    if (CHHexStringToRGBA(hexString, &red, &green, &blue, &aAlpha)) {
        return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    }
    return nil;
}

+ (UIColor *)ch_colorWithColor:(UIColor *)fromColor toColor:(UIColor *)toColor delta:(CGFloat)delta {
    /*
     http://stackoverflow.com/questions/10781953/determine-rgba-colour-received-by-combining-two-colours
     */
    CGFloat aDelta = delta;
    CH_CLAMP_COLOR_VALUE(aDelta);
    
    CGFloat fromRed = fromColor.ch_redOfRGBA;
    CGFloat fromGreen = fromColor.ch_greenOfRGBA;
    CGFloat fromBlue = fromColor.ch_blueOfRGBA;
    CGFloat fromAlpha = fromColor.ch_alpha;
    
    CGFloat toRed = toColor.ch_redOfRGBA;
    CGFloat toGreen = toColor.ch_greenOfRGBA;
    CGFloat toBlue = toColor.ch_blueOfRGBA;
    CGFloat toAlpha = toColor.ch_alpha;
    
    CGFloat finalAlpha = fromAlpha + (toAlpha - fromAlpha) * aDelta;
    CGFloat finalRed = fromRed + (toRed - fromRed) * aDelta;
    CGFloat finalGreen = fromGreen + (toGreen - fromGreen) * aDelta;
    CGFloat finalBlue = fromBlue + (toBlue - fromBlue) * aDelta;
    
    return [UIColor colorWithRed:finalRed green:finalGreen blue:finalBlue alpha:finalAlpha];
}

+ (UIColor *)ch_colorWithFrontColor:(UIColor *)frontColor backendColor:(UIColor *)backendColor {    
    CGFloat frontAlpha = frontColor.ch_alpha;
    CGFloat frontRed = frontColor.ch_redOfRGBA;
    CGFloat frontGreen = frontColor.ch_greenOfRGBA;
    CGFloat frontBlue = frontColor.ch_blueOfRGBA;
    
    CGFloat backendAlpha = backendColor.ch_alpha;
    CGFloat backendRed = backendColor.ch_redOfRGBA;
    CGFloat backendGreen = backendColor.ch_greenOfRGBA;
    CGFloat backendBlue = backendColor.ch_blueOfRGBA;
    
    CGFloat resultAlpha = frontAlpha + backendAlpha * (1 - frontAlpha);
    CGFloat resultRed = (frontRed * frontAlpha + backendRed * backendAlpha * (1 - frontAlpha)) / resultAlpha;
    CGFloat resultGreen = (frontGreen * frontAlpha + backendGreen * backendAlpha * (1 - frontAlpha)) / resultAlpha;
    CGFloat resultBlue = (frontBlue * frontAlpha + backendBlue * backendAlpha * (1 - frontAlpha)) / resultAlpha;
    return [UIColor colorWithRed:resultRed green:resultGreen blue:resultBlue alpha:resultAlpha];
}

#pragma mark - Modify
- (UIColor *)ch_colorByAddColor:(UIColor *)addColor blendMode:(CGBlendMode)blendMode {
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB(); // 获取设备支持的RGB颜色空间
    /*
     CGContextRef CGBitmapContextCreate ()
     当你调用这个函数的时候, Quartz创建一个位图绘制环境, 也就是位图上下文。
     当你向上下文中绘制信息时, Quartz把你要绘制的信息作为位图数据绘制到指定的内存块。
     一个新的位图上下文的像素格式由三个参数决定:
     每个组件的位数, 颜色空间, alpha选项。alpha值决定了绘制像素的透明性。
     
     data -> 指向要渲染的绘制内存的地址。这个内存块的大小至少是(bytesPerRow*height)个字节
     width -> bitmap的宽度, 单位为像素
     height -> bitmap的高度, 单位为像素
     bitsPerComponent -> 内存中像素的每个组件的位数。例如, 对于32位像素格式和RGB颜色空间, 你应该将这个值设为8
     bytesPerRow -> bitmap的每一行在内存所占的比特数
     colorspace -> bitmap上下文使用的颜色空间
     bitmapInfo -> 指定bitmap是否包含alpha通道, 像素中alpha通道的相对位置, 像素组件是整形还是浮点型等信息的字符串
     */
    CGBitmapInfo bitmapInfo = kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big;
    uint8_t pixel[4] = { 0 }; // RGBA
    CGContextRef context = CGBitmapContextCreate(&pixel, 1, 1, 8, 4, colorSpace, bitmapInfo); // 上下文
    CGContextSetFillColorWithColor(context, self.CGColor); // Orignal
    CGContextFillRect(context, CGRectMake(0, 0, 1, 1));
    CGContextSetBlendMode(context, blendMode);
    CGContextSetFillColorWithColor(context, addColor.CGColor); // Add
    CGContextFillRect(context, CGRectMake(0, 0, 1, 1));
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    return [UIColor colorWithRed:pixel[0] / 255.0f green:pixel[1] / 255.0f blue:pixel[2] / 255.0f alpha:pixel[3] / 255.0f];
}

- (UIColor *)ch_colorByChangeAlpha:(CGFloat)alphaDelta {
    CGFloat alpha = self.ch_alpha;
    alpha += alphaDelta;
    CH_CLAMP_COLOR_VALUE(alpha);
    return [self colorWithAlphaComponent:alpha];
}

- (UIColor *)ch_colorByChangeRed:(CGFloat)redDelta {
    return [self ch_colorByChangeRed:redDelta green:0 blue:0 alpha:0];
}

- (UIColor *)ch_colorByChangeGreen:(CGFloat)greenDelta {
    return [self ch_colorByChangeRed:0 green:greenDelta blue:0 alpha:0];
}

- (UIColor *)ch_colorByChangeBlue:(CGFloat)blueDelta{
    return [self ch_colorByChangeRed:0 green:0 blue:blueDelta alpha:0];
}

- (UIColor *)ch_colorByChangeRed:(CGFloat)redDelta green:(CGFloat)greenDelta blue:(CGFloat)blueDelta alpha:(CGFloat)alphaDelta {
    CGFloat red, blue, green, alpha;
    if (![self getRed:&red green:&green blue:&blue alpha:&alpha]) return nil;
    
    red += redDelta;
    green += greenDelta;
    blue += blueDelta;
    alpha += alphaDelta;
    
    CH_CLAMP_COLOR_VALUE(red);
    CH_CLAMP_COLOR_VALUE(green);
    CH_CLAMP_COLOR_VALUE(blue);
    CH_CLAMP_COLOR_VALUE(alpha);
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

- (UIColor *)ch_colorByChangeToColor:(UIColor *)color delta:(CGFloat)delta {
    return [UIColor ch_colorWithColor:self toColor:color delta:delta];
}

- (UIColor *)ch_colorByChangeWithoutAlpha {
    return [self ch_colorByChangeAlpha:1];
}

- (UIColor *)ch_colorByAddToWhiteBackgroundColorWithAlpha:(CGFloat)alpha {
    return [self ch_colorByAddToBackgroundColor:[UIColor whiteColor] alpha:alpha];
}

- (UIColor *)ch_colorByAddToBackgroundColor:(UIColor *)backgroundColor alpha:(CGFloat)alpha {
    return [UIColor ch_colorWithFrontColor:[self colorWithAlphaComponent:alpha] backendColor:backgroundColor];
}

- (UIColor *)ch_colorByInverted {
    /*
     http://stackoverflow.com/questions/5893261/how-to-get-inverse-color-from-uicolor
     */
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    UIColor *color = [[UIColor alloc] initWithRed:(1.0 - components[0]) green:(1.0 - components[1])blue:(1.0 - components[2]) alpha:components[3]];
    return color;
}

@end
