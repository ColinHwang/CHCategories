//
//  NSAttributedString+CHBase.h
//  Pods
//
//  Created by CHwang on 17/1/12.
//
//  Base

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class NSParagraphStyle, UIFont, UIColor;

@interface NSAttributedString (CHBase)

#pragma mark - Base
/**
 获取NSAttributedString的全范围(NSMakeRange(0, string.length))

 @return 字符串的全范围
*/
- (NSRange)ch_rangeOfAll;

/**
 获取ASCII字符为1个字节, 非ASCII字符为2个字节的编码方式下的字符串长度
 */
@property (nonatomic, readonly) NSUInteger ch_lengthOfUsingNonASCIICharacterAsTwoEncoding;

/**
 获取索引位置NSAttributedString的所有属性, 若无或索引越界返回空集合

 @param index 索引位置(从0开始)
 @return 字符的所有属性, 若无或索引越界返回空集合
 */
- (NSDictionary<NSString *, id> *)ch_attributesAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有属性, 若无返回空集合

 @param range 指定范围
 @return 指定范围内NSAttributedString的共有属性, 若无返回空集合
 */
- (NSDictionary<NSString *, id> *)ch_attributesInRange:(NSRange)range;

/**
 获取NSAttributedString的共有属性, 若无返回空集合
 */
@property (nonatomic, copy, readonly) NSDictionary<NSString *, id> *ch_attributes;

/**
 根据属性名, 获取索引位置NSAttributedString的属性, 若无或索引越界返回nil

 @param attrName 属性名
 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的属性, 若无或索引越界返回nil
 */
- (nullable id)ch_attribute:(NSString *)attrName atIndex:(NSUInteger)index;

/**
 根据属性名, 获取指定范围内NSAttributedString的共有属性, 若无返回nil

 @param attrName 属性名
 @param range 指定范围
 @return 指定范围内NSAttributedString的共有属性, 若无返回nil
 */
- (nullable id)ch_attribute:(NSString *)attrName inRange:(NSRange)range;

/**
 根据属性名, 获取NSAttributedString的共有属性, 若无返回nil

 @param attrName 属性名
 @return 获取NSAttributedString的共有属性, 若无返回nil
 */
- (nullable id)ch_attribute:(NSString *)attrName;

#pragma mark - Drawing
/**
 获取NSAttributedString的Size

 @param size 宽高限制, 用于计算文本绘制时占据的最大矩形块
 @return NSAttributedString的Size
 */
- (CGSize)ch_boundingSizeForSize:(CGSize)size;

/**
 获取NSAttributedString宽度(单行)

 @return NSAttributedString宽度(单行)
 */
- (CGFloat)ch_boundingWidth;

/**
 获取NSAttributedString高度

 @param width 宽度限制, 用于计算文本绘制时占据的最大宽度
 @return NSAttributedString高度
 */
- (CGFloat)ch_boundingHeightForWidth:(CGFloat)width;

#pragma mark - Attributed Substrings
/**
 获取NSAttributedString从0到指定结束位置的子AttributedString

 @param to 指定结束位置
 @return 新字符串
 */
- (NSAttributedString *)ch_attributedSubstringToIndex:(NSUInteger)to;

/**
 获取NSAttributedString从指定起始位置到结尾的子AttributedString

 @param from 指定起始位置
 @return 新字符串
 */
- (NSAttributedString *)ch_attributedSubstringFromIndex:(NSUInteger)from;

#pragma mark - Check
/**
 判断特定Range是否包含于NSAttributedString中字符串Range内

 @param range 特定Range
 @return 包含返回YES, 否则返回NO
 */
- (BOOL)ch_containsRange:(NSRange)range;

/**
 判断NSAttributedString全范围是否共用同一属性集

 @return 是返回YES, 否则返回NO
 */
- (BOOL)ch_isSharedAttributesInAllRange;

#pragma mark - Font
/**
 获取索引位置NSAttributedString的字体(UIFont), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 字体, 若无或索引越界返回nil
 */
- (UIFont *)ch_fontAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有字体(UIFont), 若无返回nil

 @param range 指定范围
 @return 共有字体, 若无返回nil
 */
- (UIFont *)ch_fontInRange:(NSRange)range;

/**
 获取NSAttributedString的共有字体(UIFont), 若无返回nil
 */
@property (nonatomic, readonly) UIFont *ch_font;

#pragma mark - Paragraph Style
/**
 获取索引位置NSAttributedString的ParagraphStyle(NSParagraphStyle), 若无返回默认ParagraphStyle

 @param index 索引位置(从0开始)
 @return ParagraphStyle, 若无返回默认ParagraphStyle
 */
- (NSParagraphStyle *)ch_paragraphStyleAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有ParagraphStyle(NSParagraphStyle), 若无返回nil

 @param range 指定范围
 @return 共有ParagraphStyle, 若无返回nil
 */
- (NSParagraphStyle *)ch_paragraphStyleInRange:(NSRange)range;

/**
  获取NSAttributedString的共有ParagraphStyle(NSParagraphStyle), 若无返回nil
 */
@property (nonatomic, readonly) NSParagraphStyle *ch_paragraphStyle;

#pragma mark - Foreground Color
/**
 获取索引位置NSAttributedString的字体颜色(UIColor), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 字体颜色, 若无或索引越界返回nil
 */
- (UIColor *)ch_foregroundColorAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有字体颜色(UIColor), 若无返回nil
 
 @param range 指定范围
 @return 共有字体颜色, 若无返回nil
 */
- (UIColor *)ch_foregroundColorInRange:(NSRange)range;

/**
 获取NSAttributedString的共有字体颜色(UIColor), 若无返回nil
 */
@property (nonatomic, readonly) UIColor *ch_foregroundColor;

#pragma mark - Background Color
/**
 获取索引位置NSAttributedString的背景颜色(UIColor), 若无或索引越界返回nil
 
 @param index 索引位置(从0开始)
 @return 背景颜色, 若无或索引越界返回nil
 */
- (UIColor *)ch_backgroundColorAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有背景颜色(UIColor), 若无返回nil

 @param range 指定范围
 @return 共有背景颜色, 若无返回nil
 */
- (UIColor *)ch_backgroundColorInRange:(NSRange)range;

/**
 获取NSAttributedString的共有背景颜色(UIColor), 若无返回nil
 */
@property (nonatomic, readonly) UIColor *ch_backgroundColor;

#pragma mark - Ligature
/**
 获取索引位置NSAttributedString的连体值(NSInteger), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的连体值(NSInteger), 若无或索引越界返回nil
 */
- (NSNumber *)ch_ligatureAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有连体值(NSInteger), 若无返回nil

 @param range 指定范围
 @return 共有连体值, 若无返回nil
 */
- (NSNumber *)ch_ligatureInRange:(NSRange)range;

/**
 获取NSAttributedString的共有连体值(NSInteger), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_ligature;

#pragma mark - Kern
/**
 获取索引位置NSAttributedString的间距值(CGFloat), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的间距值(CGFloat), 若无或索引越界返回nil
 */
- (NSNumber *)ch_kernAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有间距值(CGFloat), 若无返回nil

 @param range 指定范围
 @return 共有间距值, 若无返回nil
 */
- (NSNumber *)ch_kernInRange:(NSRange)range;

/**
 获取NSAttributedString的共有间距值(NSInteger), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_kern;

#pragma mark - Strikethrough Style
/**
 获取索引位置NSAttributedString的删除线类型(NSUnderlineStyle), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的删除线类型(NSUnderlineStyle), 若无或索引越界返回nil
 */
- (NSNumber *)ch_strikethroughStyleAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有删除线类型(NSUnderlineStyle), 若无返回nil

 @param range 指定范围
 @return 共有删除线类型, 若无返回nil
 */
- (NSNumber *)ch_strikethroughStyleInRange:(NSRange)range;

/**
 获取NSAttributedString的共有删除线类型(NSUnderlineStyle), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_strikethroughStyle;

#pragma mark - Underline Style
/**
 获取索引位置NSAttributedString的下划线类型(NSUnderlineStyle), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的下划线类型(NSUnderlineStyle), 若无或索引越界返回nil
 */
- (NSNumber *)ch_underlineStyleAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有删除线类型(NSUnderlineStyle), 若无返回nil

 @param range 指定范围
 @return 共有删除线类型(NSUnderlineStyle), 若无返回nil
 */
- (NSNumber *)ch_underlineStyleInRange:(NSRange)range;

/**
 获取NSAttributedString的共有删除线类型(NSUnderlineStyle), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_underlineStyle;

#pragma mark - Stroke Color
/**
 获取索引位置NSAttributedString的描边颜色(UIColor), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的描边颜色(UIColor), 若无或索引越界返回nil
 */
- (UIColor *)ch_strokeColorAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有描边颜色(UIColor), 若无返回nil

 @param range 指定范围
 @return 共有描边颜色(UIColor), 若无返回nil
 */
- (UIColor *)ch_strokeColorInRange:(NSRange)range;

/**
 获取NSAttributedString的共有描边颜色(UIColor), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_strokeColor;

#pragma mark - Stroke Width
/**
 获取索引位置NSAttributedString的描边宽度(CGFloat), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的描边宽度(CGFloat), 若无或索引越界返回nil
 */
- (NSNumber *)ch_strokeWidthAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有描边宽度(CGFloat), 若无返回nil

 @param range 指定范围
 @return 共有描边宽度(CGFloat), 若无返回nil
 */
- (NSNumber *)ch_strokeWidthInRange:(NSRange)range;

/**
 获取NSAttributedString的共有描边宽度(CGFloat), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_strokeWidth;

#pragma mark - Shadow
/**
 获取索引位置NSAttributedString的阴影(NSShadow), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的阴影(NSShadow), 若无或索引越界返回nil
 */
- (NSShadow *)ch_shadowAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有阴影(NSShadow), 若无返回nil

 @param range 指定范围
 @return 共有阴影(NSShadow), 若无返回nil
 */
- (NSShadow *)ch_shadowInRange:(NSRange)range;

/**
 获取NSAttributedString的共有阴影(NSShadow), 若无返回nil
 */
@property (nonatomic, readonly) NSShadow *ch_shadow;

#pragma mark - Text Effect
/**
 获取索引位置NSAttributedString的文字特殊效果(NSString), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的文字特殊效果(NSString), 若无或索引越界返回nil
 */
- (NSString *)ch_textEffectAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有文字特殊效果(NSString), 若无返回nil

 @param range 指定范围
 @return 共有文字特殊效果(NSString), 若无返回nil
 */
- (NSString *)ch_textEffectInRange:(NSRange)range;

/**
 获取NSAttributedString的共有文字特殊效果(NSString), 若无返回nil
 */
@property (nonatomic, readonly) NSString *ch_textEffect;

#pragma mark - Attachment
/**
 获取索引位置NSAttributedString的文字附件对象(NSTextAttachment), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的文字附件对象(NSTextAttachment), 若无或索引越界返回nil
 */
- (NSTextAttachment *)ch_attachmentAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有文字附件对象(NSTextAttachment), 若无返回nil

 @param range 指定范围
 @return 共有文字附件对象(NSTextAttachment), 若无返回nil
 */
- (NSTextAttachment *)ch_attachmentInRange:(NSRange)range;

/**
 获取NSAttributedString的共有文字附件对象(NSTextAttachment), 若无返回nil
 */
@property (nonatomic, readonly) NSTextAttachment *ch_attachment;

#pragma mark - Link
/**
 获取索引位置NSAttributedString的网址(NSURL/NSString), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的网址(NSURL/NSString), 若无或索引越界返回nil
 */
- (id)ch_linkAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有网址(NSURL/NSString), 若无返回nil

 @param range 指定范围
 @return 共有网址(NSURL/NSString), 若无返回nil
 */
- (id)ch_linkInRange:(NSRange)range;

/**
 获取NSAttributedString的共有网址(NSURL/NSString), 若无返回nil
 */
@property (nonatomic, readonly) id ch_link;

#pragma mark - Baseline Offset
/**
 获取索引位置NSAttributedString的基线偏移量(CGFloat), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的基线偏移量(CGFloat), 若无或索引越界返回nil
 */
- (NSNumber *)ch_baselineOffsetAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有基线偏移量(CGFloat), 若无返回nil

 @param range 指定范围
 @return 共有基线偏移量(CGFloat), 若无返回nil
 */
- (NSNumber *)ch_baselineOffsetInRange:(NSRange)range;

/**
 获取NSAttributedString的共有基线偏移量(CGFloat), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_baselineOffset;

#pragma mark - Underline Color
/**
 获取索引位置NSAttributedString的下划线颜色(UIColor), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的下划线颜色(UIColor), 若无或索引越界返回nil
 */
- (UIColor *)ch_underlineColorAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有下划线颜色(UIColor), 若无返回nil

 @param range 指定范围
 @return 共有下划线颜色(UIColor), 若无返回nil
 */
- (UIColor *)ch_underlineColorInRange:(NSRange)range;

/**
 获取NSAttributedString的共有下划线颜色(UIColor), 若无返回nil
 */
@property (nonatomic, readonly) UIColor *ch_underlineColor;

#pragma mark - Strikethrough Color
/**
 获取索引位置NSAttributedString的删除线颜色(UIColor), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的删除线颜色(UIColor), 若无或索引越界返回nil
 */
- (UIColor *)ch_strikethroughColorAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有删除线颜色(UIColor), 若无返回nil

 @param range 指定范围
 @return 共有删除线颜色(UIColor), 若无返回nil
 */
- (UIColor *)ch_strikethroughColorInRange:(NSRange)range;

/**
 获取NSAttributedString的共有删除线颜色(UIColor), 若无返回nil
 */
@property (nonatomic, readonly) UIColor *ch_strikethroughColor;

#pragma mark - Obliqueness
/**
 获取索引位置NSAttributedString的倾斜量(CGFloat), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的倾斜量(CGFloat), 若无或索引越界返回nil
 */
- (NSNumber *)ch_obliquenessAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有倾斜量(CGFloat), 若无返回nil

 @param range 指定范围
 @return 共有倾斜量(CGFloat), 若无返回nil
 */
- (NSNumber *)ch_obliquenessInRange:(NSRange)range;

/**
 获取NSAttributedString的共有倾斜量(CGFloat), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_obliqueness;

#pragma mark - Expansion
/**
 获取索引位置NSAttributedString的拉伸/压缩值(CGFloat), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的拉伸/压缩值(CGFloat), 若无或索引越界返回nil
 */
- (NSNumber *)ch_expansionAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有拉伸/压缩值(CGFloat), 若无返回nil

 @param range 指定范围
 @return 共有拉伸/压缩值(CGFloat), 若无返回nil
 */
- (NSNumber *)ch_expansionInRange:(NSRange)range;

/**
 获取NSAttributedString的共有拉伸/压缩值(CGFloat), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_expansion;

#pragma mark - Writing Direction
/**
 获取索引位置NSAttributedString的书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 若无或索引越界返回nil
 */
- (NSArray<NSNumber *> *)ch_writingDirectionAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 若无返回nil

 @param range 指定范围
 @return 共有书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 若无返回nil
 */
- (NSArray<NSNumber *> *)ch_writingDirectionInRange:(NSRange)range;

/**
 获取NSAttributedString的共有书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 若无返回nil
 */
@property (nonatomic, readonly) NSArray<NSNumber *> *ch_writingDirection;

#pragma mark - Vertical Glyph Form
/**
 获取索引位置NSAttributedString的横竖排版方式(BOOL), 若无或索引越界返回nil

 @param index 索引位置(从0开始)
 @return 索引位置NSAttributedString的横竖排版方式(BOOL), 若无或索引越界返回nil
 */
- (NSNumber *)ch_verticalGlyphFormAtIndex:(NSUInteger)index;

/**
 获取指定范围内NSAttributedString的共有横竖排版方式(BOOL), 若无返回nil

 @param range 指定范围
 @return 共有横竖排版方式(BOOL), 若无返回nil
 */
- (NSNumber *)ch_verticalGlyphFormInRange:(NSRange)range;

/**
 获取NSAttributedString的共有横竖排版方式(BOOL), 若无返回nil
 */
@property (nonatomic, readonly) NSNumber *ch_verticalGlyphForm;

@end


@interface NSMutableAttributedString (CHBase)

#pragma mark - Base
/**
 根据属性名称、属性值及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param name  属性名称
 @param value 属性值(nil/NSNull则移除设置范围内所有属性)
 @param range 设置范围
 */
- (void)ch_setAttribute:(NSString *)name
                  value:(id)value
                  range:(NSRange)range;

/**
 根据属性名称及属性值, 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param name  属性名称
 @param value 属性值(nil/NSNull则移除所有属性)
 */
- (void)ch_setAttribute:(NSString *)name value:(id)value;

/**
 根据属性集, 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param attrs 属性集(nil/NSNull则移除所有属性集)
 */
- (void)ch_setAttributes:(NSDictionary<NSString *, id> *)attrs;

/**
 根据属性名称及属性值, 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param name  属性名称
 @param value 属性值
 */
- (void)ch_addAttribute:(NSString *)name value:(id)value;

/**
 根据属性集, 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param attrs 属性集
 */
- (void)ch_addAttributes:(NSDictionary<NSString *, id> *)attrs;

/**
 根据属性名称, 移除NSMutableAttributedString属性(全范围移除)
 
 @param name 属性名称
 */
- (void)ch_removeAttribute:(NSString *)name;

/**
 根据属性集及移除范围, 移除NSMutableAttributedString属性
 
 @param attrNames 属性集
 @param range     移除范围
 */
- (void)ch_removeAttributes:(NSArray<NSString *> *)attrNames range:(NSRange)range;

/**
 根据属性集, 移除NSMutableAttributedString属性(全范围移除)
 
 @param attrNames 属性集
 */
- (void)ch_removeAttributes:(NSArray<NSString *> *)attrNames;

/**
 根据移除范围, 移除NSMutableAttributedString的所有属性
 
 @param range 移除范围
 */
- (void)ch_removeAttributesInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的所有属性(全范围移除)
 */
- (void)ch_removeAttributes;

/**
 根据插入位置, 将指定字符串插入NSMutableAttributedString, 字符串属性与插入位置的原字符属性一致
 
 @param string   指定字符串
 @param location 插入位置
 */
- (void)ch_insertString:(NSString *)string atIndex:(NSUInteger)location;

/**
 将指定字符串拼接至NSMutableAttributedString末尾, 字符串属性与NSMutableAttributedString最后一个字符属性一致
 
 @param string 指定字符串
 */
- (void)ch_appendString:(NSString *)string;

/**
 根据移除位置, 移除NSMutableAttributedString的非连续属性集(非连续属性集Keys, 参见ch_allDiscontinuousAttributeKeys)
 
 @param range 移除位置
 */
- (void)ch_removeDiscontinuousAttributesInRange:(NSRange)range;

/**
 获取NSMutableAttributedString的非连续属性集Keys(Superscript/RunDelegate/RubyAnnotation/Attachment, 这些属性只适用于特点范围内)
 
 @return 非连续属性集Keys
 */
+ (NSArray<NSString *> *)ch_allDiscontinuousAttributeKeys;

#pragma mark - Font
/**
 根据字体(UIFont)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param font  字体(UIFont)
 @param range 设置范围
 */
- (void)ch_setFont:(UIFont *)font range:(NSRange)range;

/**
 根据字体(UIFont), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param font 字体(UIFont)
 */
- (void)ch_setFont:(UIFont *)font;

/**
 根据字体(UIFont)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param font  字体(UIFont)
 @param range 设置范围
 */
- (void)ch_addFont:(UIFont *)font range:(NSRange)range;

/**
 根据字体(UIFont), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param font 字体(UIFont)
 */
- (void)ch_addFont:(UIFont *)font;

/**
 根据移除范围, 移除NSMutableAttributedString的Font属性
 
 @param range 移除范围
 */
- (void)ch_removeFontInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的Font属性(全范围移除)
 */
- (void)ch_removeFont;

#pragma mark - Paragraph Style
/**
 根据ParagraphStyle(NSParagraphStyle)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param paragraphStyle ParagraphStyle(NSParagraphStyle)
 @param range          设置范围
 */
- (void)ch_setParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range;

/**
 根据ParagraphStyle(NSParagraphStyle), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param paragraphStyle ParagraphStyle(NSParagraphStyle)
 */
- (void)ch_setParagraphStyle:(NSParagraphStyle *)paragraphStyle;

/**
 根据ParagraphStyle(NSParagraphStyle)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param paragraphStyle ParagraphStyle(NSParagraphStyle)
 @param range          设置范围
 */
- (void)ch_addParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range;

/**
 根据ParagraphStyle(NSParagraphStyle), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param paragraphStyle ParagraphStyle(NSParagraphStyle)
 */
- (void)ch_addParagraphStyle:(NSParagraphStyle *)paragraphStyle;

/**
 根据移除范围, 移除NSMutableAttributedString的ParagraphStyle属性
 
 @param range 移除范围
 */
- (void)ch_removeParagraphStyleInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的ParagraphStyle属性(全范围移除)
 */
- (void)ch_removeParagraphStyle;

#pragma mark - Foreground Color
/**
 根据字体颜色(UIColor)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param color 字体颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_setForegroundColor:(UIColor *)color range:(NSRange)range;

/**
 根据字体颜色(UIColor), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param color 字体颜色(UIColor)
 */
- (void)ch_setForegroundColor:(UIColor *)color;

/**
 根据字体颜色(UIColor)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param color 字体颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_addForegroundColor:(UIColor *)color range:(NSRange)range;

/**
 根据字体颜色(UIColor), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param color 字体颜色(UIColor)
 */
- (void)ch_addForegroundColor:(UIColor *)color;

/**
 根据移除范围, 移除NSMutableAttributedString的字体颜色属性
 
 @param range 移除范围
 */
- (void)ch_removeForegroundColorInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的字体颜色属性(全范围移除)
 */
- (void)ch_removeForegroundColor;

#pragma mark - Background Color
/**
 根据背景颜色(UIColor)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param color 背景颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_setBackgroundColor:(UIColor *)color range:(NSRange)range;

/**
 根据背景颜色(UIColor), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param color 背景颜色(UIColor)
 */
- (void)ch_setBackgroundColor:(UIColor *)color;

/**
 根据背景颜色(UIColor)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param color 背景颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_addBackgroundColor:(UIColor *)color range:(NSRange)range;

/**
 根据背景颜色(UIColor), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param color 背景颜色(UIColor)
 */
- (void)ch_addBackgroundColor:(UIColor *)color;

/**
 根据移除范围, 移除NSMutableAttributedString的背景颜色属性
 
 @param range 移除范围
 */
- (void)ch_removeBackgroundColorInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的背景颜色属性(全范围移除)
 */
- (void)ch_removeBackgroundColor;

#pragma mark - Ligature
/**
 根据连体值(NSInteger)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param ligature 连体值(NSInteger)
 @param range 设置范围
 */
- (void)ch_setLigature:(NSNumber *)ligature range:(NSRange)range;

/**
 根据连体值(NSInteger), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param ligature 连体值(NSInteger)
 */
- (void)ch_setLigature:(NSNumber *)ligature;

/**
 根据连体值(NSInteger)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param ligature 连体值(NSInteger)
 @param range 设置范围
 */
- (void)ch_addLigature:(NSNumber *)ligature range:(NSRange)range;

/**
 根据连体值(NSInteger), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param ligature 连体值(NSInteger)
 */
- (void)ch_addLigature:(NSNumber *)ligature;

/**
 根据移除范围, 移除NSMutableAttributedString的连体值属性
 
 @param range 移除范围
 */
- (void)ch_removeLigatureInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的连体值属性(全范围移除)
 */
- (void)ch_removeLigature;

#pragma mark - Kern
/**
 根据间距值(CGFloat)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param kern 间距值(CGFloat)
 @param range 设置范围
 */
- (void)ch_setKern:(NSNumber *)kern range:(NSRange)range;

/**
 根据间距值(CGFloat), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param kern 间距值(CGFloat)
 */
- (void)ch_setKern:(NSNumber *)kern;

/**
 根据间距值(CGFloat)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param kern 间距值(CGFloat)
 @param range 设置范围
 */
- (void)ch_addKern:(NSNumber *)kern range:(NSRange)range;

/**
 根据间距值(CGFloat), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param kern 间距值(CGFloat)
 */
- (void)ch_addKern:(NSNumber *)kern;

/**
 根据移除范围, 移除NSMutableAttributedString的间距值属性
 
 @param range 移除范围
 */
- (void)ch_removeKernInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的间距值属性(全范围移除)
 */
- (void)ch_removeKern;

#pragma mark - Strikethrough Style
/**
 根据删除线类型(NSUnderlineStyle)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param strikethroughStyle 删除线类型(NSUnderlineStyle)
 @param range 设置范围
 */
- (void)ch_setStrikethroughStyle:(NSNumber *)strikethroughStyle range:(NSRange)range;

/**
 根据删除线类型(NSUnderlineStyle), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param strikethroughStyle 删除线类型(NSUnderlineStyle)
 */
- (void)ch_setStrikethroughStyle:(NSNumber *)strikethroughStyle;

/**
 根据删除线类型(NSUnderlineStyle)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param strikethroughStyle 删除线类型(NSUnderlineStyle)
 @param range 设置范围
 */
- (void)ch_addStrikethroughStyle:(NSNumber *)strikethroughStyle range:(NSRange)range;

/**
 根据删除线类型(NSUnderlineStyle), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param strikethroughStyle 删除线类型(NSUnderlineStyle)
 */
- (void)ch_addStrikethroughStyle:(NSNumber *)strikethroughStyle;

/**
 根据移除范围, 移除NSMutableAttributedString的删除线类型属性
 
 @param range 移除范围
 */
- (void)ch_removeStrikethroughStyleInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的删除线类型属性(全范围移除)
 */
- (void)ch_removeStrikethroughStyle;

#pragma mark - Underline Style
/**
 根据下划线类型(NSUnderlineStyle)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param underlineStyle 下划线类型(NSUnderlineStyle)
 @param range 设置范围
 */
- (void)ch_setUnderlineStyle:(NSNumber *)underlineStyle range:(NSRange)range;

/**
 根据下划线类型(NSUnderlineStyle), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param underlineStyle 下划线类型(NSUnderlineStyle)
 */
- (void)ch_setUnderlineStyle:(NSNumber *)underlineStyle;

/**
 根据下划线类型(NSUnderlineStyle)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param underlineStyle 下划线类型(NSUnderlineStyle)
 @param range 设置范围
 */
- (void)ch_addUnderlineStyle:(NSNumber *)underlineStyle range:(NSRange)range;

/**
 根据下划线类型(NSUnderlineStyle), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param underlineStyle 下划线类型(NSUnderlineStyle)
 */
- (void)ch_addUnderlineStyle:(NSNumber *)underlineStyle;

/**
 根据移除范围, 移除NSMutableAttributedString的下划线类型属性
 
 @param range 移除范围
 */
- (void)ch_removeUnderlineStyleInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的下划线类型属性
 */
- (void)ch_removeUnderlineStyle;

#pragma mark - Stroke Color
/**
 根据描边颜色(UIColor)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param color 描边颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_setStrokeColor:(UIColor *)color range:(NSRange)range;

/**
 根据描边颜色(UIColor), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param color 描边颜色(UIColor)
 */
- (void)ch_setStrokeColor:(UIColor *)color;

/**
 根据描边颜色(UIColor)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param color 描边颜色
 @param range 设置范围
 */
- (void)ch_addStrokeColor:(UIColor *)color range:(NSRange)range;

/**
 根据描边颜色(UIColor), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param color 描边颜色
 */
- (void)ch_addStrokeColor:(UIColor *)color;

/**
 根据移除范围, 移除NSMutableAttributedString的描边颜色属性
 
 @param range 移除范围
 */
- (void)ch_removeStrokeColorInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的描边颜色属性
 */
- (void)ch_removeStrokeColor;

#pragma mark - Stroke Width
/**
 根据描边宽度(CGFloat)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param strokeWidth 描边宽度(CGFloat)
 @param range 设置范围
 */
- (void)ch_setStrokeWidth:(NSNumber *)strokeWidth range:(NSRange)range;

/**
 根据描边宽度(CGFloat), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param strokeWidth 描边宽度(CGFloat)
 */
- (void)ch_setStrokeWidth:(NSNumber *)strokeWidth;

/**
 根据描边宽度(CGFloat)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param strokeWidth 描边宽度(CGFloat)
 @param range 设置范围
 */
- (void)ch_addStrokeWidth:(NSNumber *)strokeWidth range:(NSRange)range;

/**
 根据描边宽度(CGFloat), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param strokeWidth 描边宽度(CGFloat)
 */
- (void)ch_addStrokeWidth:(NSNumber *)strokeWidth;

/**
 根据移除范围, 移除NSMutableAttributedString的描边宽度属性
 
 @param range 移除范围
 */
- (void)ch_removeStrokeWidthInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的描边宽度属性
 */
- (void)ch_removeStrokeWidth;

#pragma mark - Shadow
/**
 根据阴影(NSShadow)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param shadow 阴影(NSShadow)
 @param range 设置范围
 */
- (void)ch_setShadow:(NSShadow *)shadow range:(NSRange)range;

/**
 根据阴影(NSShadow), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param shadow 阴影(NSShadow)
 */
- (void)ch_setShadow:(NSShadow *)shadow;

/**
 根据阴影(NSShadow)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param shadow 阴影(NSShadow)
 @param range 设置范围
 */
- (void)ch_addShadow:(NSShadow *)shadow range:(NSRange)range;

/**
 根据阴影(NSShadow), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param shadow 阴影(NSShadow)
 */
- (void)ch_addShadow:(NSShadow *)shadow;

/**
 根据移除范围, 移除NSMutableAttributedString的阴影属性
 
 @param range 移除范围
 */
- (void)ch_removeShadowInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的阴影属性
 */
- (void)ch_removeShadow;

#pragma mark - Text Effect
/**
 根据文字特殊效果(NSString)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param textEffect 文字特殊效果(NSString)
 @param range 设置范围
 */
- (void)ch_setTextEffect:(NSString *)textEffect range:(NSRange)range;

/**
 根据文字特殊效果(NSString), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param textEffect 文字特殊效果(NSString)
 */
- (void)ch_setTextEffect:(NSString *)textEffect;

/**
 根据文字特殊效果(NSString)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param textEffect 文字特殊效果(NSString)
 @param range 设置范围
 */
- (void)ch_addTextEffect:(NSString *)textEffect range:(NSRange)range;

/**
 根据文字特殊效果(NSString), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param textEffect 文字特殊效果(NSString)
 */
- (void)ch_addTextEffect:(NSString *)textEffect;

/**
 根据移除范围, 移除NSMutableAttributedString的文字特殊效果属性
 
 @param range 移除范围
 */
- (void)ch_removeTextEffectInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的文字特殊效果属性
 */
- (void)ch_removeTextEffect;

#pragma mark - Attachment
/**
 根据文字特殊效果(NSString)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param attachment 文字附件对象(NSTextAttachment)
 @param range 设置范围
 */
- (void)ch_setAttachment:(NSTextAttachment *)attachment range:(NSRange)range;

/**
 根据文字附件对象(NSTextAttachment), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param attachment 文字附件对象(NSTextAttachment)
 */
- (void)ch_setAttachment:(NSTextAttachment *)attachment;

/**
 根据文字附件对象(NSTextAttachment)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param attachment 文字附件对象(NSTextAttachment)
 @param range 设置范围
 */
- (void)ch_addAttachment:(NSTextAttachment *)attachment range:(NSRange)range;

/**
 根据文字附件对象(NSTextAttachment) 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param attachment 文字附件对象(NSTextAttachment)
 */
- (void)ch_addAttachment:(NSTextAttachment *)attachment;

/**
 根据移除范围, 移除NSMutableAttributedString的文字附件对象属性
 
 @param range 移除范围
 */
- (void)ch_removeAttachmentInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的文字附件对象属性
 */
- (void)ch_removeAttachment;

#pragma mark - Link
/**
 根据网址(NSURL/NSString)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param link  网址(NSURL/NSString)
 @param range 设置范围
 */
- (void)ch_setLink:(id)link range:(NSRange)range;

/**
 根据网址(NSURL/NSString), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param link 网址(NSURL/NSString)
 */
- (void)ch_setLink:(id)link;

/**
 根据网址(NSURL/NSString)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param link  网址(NSURL/NSString)
 @param range 设置范围
 */
- (void)ch_addLink:(id)link range:(NSRange)range;

/**
 根据网址(NSURL/NSString), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param link 网址(NSURL/NSString)
 */
- (void)ch_addLink:(id)link;

/**
 根据移除范围, 移除NSMutableAttributedString的网址属性
 
 @param range 移除范围
 */
- (void)ch_removeLinkInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的网址属性
 */
- (void)ch_removeLink;

#pragma mark - Baseline Offset
/**
 根据基线偏移量属性(CGFloat)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param baselineOffset 基线偏移量属性(CGFloat)
 @param range 设置范围
 */
- (void)ch_setBaselineOffset:(NSNumber *)baselineOffset range:(NSRange)range;

/**
 根据基线偏移量属性(CGFloat), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param baselineOffset 基线偏移量属性(CGFloat)
 */
- (void)ch_setBaselineOffset:(NSNumber *)baselineOffset;

/**
 根据基线偏移量属性(CGFloat)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param baselineOffset 基线偏移量属性(CGFloat)
 @param range          设置范围
 */
- (void)ch_addBaselineOffset:(NSNumber *)baselineOffset range:(NSRange)range;

/**
 根据基线偏移量属性(CGFloat), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param baselineOffset 基线偏移量属性(CGFloat)
 */
- (void)ch_addBaselineOffset:(NSNumber *)baselineOffset;

/**
 根据移除范围, 移除NSMutableAttributedString的基线偏移量属性
 
 @param range 移除范围
 */
- (void)ch_removeBaselineOffsetInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的基线偏移量属性
 */
- (void)ch_removeBaselineOffset;

#pragma mark - Underline Color
/**
 根据下划线颜色(UIColor)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param color 下划线颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_setUnderlineColor:(UIColor *)color range:(NSRange)range;

/**
 根据下划线颜色(UIColor), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param color 下划线颜色(UIColor)
 */
- (void)ch_setUnderlineColor:(UIColor *)color;

/**
 根据下划线颜色(UIColor)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param color 下划线颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_addUnderlineColor:(UIColor *)color range:(NSRange)range;

/**
 根据下划线颜色(UIColor), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param color 下划线颜色(UIColor)
 */
- (void)ch_addUnderlineColor:(UIColor *)color;

/**
 根据移除范围, 移除NSMutableAttributedString的下划线颜色属性
 
 @param range 移除范围
 */
- (void)ch_removeUnderlineColorInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的下划线颜色属性
 */
- (void)ch_removeUnderlineColor;

#pragma mark - Strikethrough Color
/**
 根据删除线颜色(UIColor)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param color 删除线颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_setStrikethroughColor:(UIColor *)color range:(NSRange)range;

/**
 根据删除线颜色(UIColor), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param color 删除线颜色(UIColor)
 */
- (void)ch_setStrikethroughColor:(UIColor *)color;

/**
 根据删除线颜色(UIColor)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param color 删除线颜色(UIColor)
 @param range 设置范围
 */
- (void)ch_addStrikethroughColor:(UIColor *)color range:(NSRange)range;

/**
 根据删除线颜色(UIColor), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param color 删除线颜色(UIColor)
 */
- (void)ch_addStrikethroughColor:(UIColor *)color;
/**
 根据移除范围, 移除NSMutableAttributedString的删除线颜色属性
 
 @param range 移除范围
 */
- (void)ch_removeStrikethroughColorInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的删除线颜色属性
 */
- (void)ch_removeStrikethroughColor;

#pragma mark - Obliqueness
/**
 根据倾斜量(CGFloat)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param obliqueness 倾斜量(CGFloat)
 @param range 设置范围
 */
- (void)ch_setObliqueness:(NSNumber *)obliqueness range:(NSRange)range;

/**
 根据倾斜量(CGFloat), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param obliqueness 倾斜量(CGFloat)
 */
- (void)ch_setObliqueness:(NSNumber *)obliqueness;

/**
 根据倾斜量(CGFloat)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param obliqueness 倾斜量(CGFloat)
 @param range 设置范围
 */
- (void)ch_addObliqueness:(NSNumber *)obliqueness range:(NSRange)range;

/**
 根据倾斜量(CGFloat), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param obliqueness 倾斜量(CGFloat)
 */
- (void)ch_addObliqueness:(NSNumber *)obliqueness;

/**
 根据移除范围, 移除NSMutableAttributedString的倾斜量属性
 
 @param range 移除范围
 */
- (void)ch_removeObliquenessInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的倾斜量属性
 */
- (void)ch_removeObliqueness;

#pragma mark - Expansion
/**
 根据拉伸/压缩值(CGFloat)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param expansion 拉伸/压缩值(CGFloat)
 @param range 设置范围
 */
- (void)ch_setExpansion:(NSNumber *)expansion range:(NSRange)range;

/**
 根据拉伸/压缩值(CGFloat), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param expansion 拉伸/压缩值(CGFloat)
 */
- (void)ch_setExpansion:(NSNumber *)expansion;

/**
 根据拉伸/压缩值(CGFloat)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param expansion 拉伸/压缩值(CGFloat)
 @param range 设置范围
 */
- (void)ch_addExpansion:(NSNumber *)expansion range:(NSRange)range;

/**
 根据拉伸/压缩值(CGFloat), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param expansion 拉伸/压缩值(CGFloat)
 */
- (void)ch_addExpansion:(NSNumber *)expansion;

/**
 根据移除范围, 移除NSMutableAttributedString的拉伸/压缩值属性
 
 @param range 移除范围
 */
- (void)ch_removeExpansionInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的拉伸/压缩值属性
 */
- (void)ch_removeExpansion;

#pragma mark - Writing Direction
/**
 根据书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param writingDirection 书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType)
 @param range 设置范围
 */
- (void)ch_setWritingDirection:(NSArray<NSNumber *> *)writingDirection range:(NSRange)range;

/**
 根据书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param writingDirection 书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType)
 */
- (void)ch_setWritingDirection:(NSArray<NSNumber *> *)writingDirection;

/**
 根据书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param writingDirection 书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType)
 @param range 设置范围
 */
- (void)ch_addWritingDirection:(NSArray<NSNumber *> *)writingDirection range:(NSRange)range;

/**
 根据书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param writingDirection 书写方向(NSArray -> NSWritingDirection|NSWritingDirectionFormatType)
 */
- (void)ch_addWritingDirection:(NSArray<NSNumber *> *)writingDirection;

/**
 根据移除范围, 移除NSMutableAttributedString的书写方向属性
 
 @param range 移除范围
 */
- (void)ch_removeWritingDirectionInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的书写方向属性
 */
- (void)ch_removeWritingDirection;

#pragma mark - Vertical Glyph Form
/**
 根据横竖排版方式(BOOL)及设置范围, 设置NSMutableAttributedString属性(替代编辑)
 
 @param verticalGlyphForm 横竖排版方式(BOOL)
 @param range 设置范围
 */
- (void)ch_setVerticalGlyphForm:(NSNumber *)verticalGlyphForm range:(NSRange)range;

/**
 根据横竖排版方式(BOOL), 设置NSMutableAttributedString属性(全范围设置, 替代编辑)
 
 @param verticalGlyphForm 横竖排版方式(BOOL)
 */
- (void)ch_setVerticalGlyphForm:(NSNumber *)verticalGlyphForm;

/**
 根据横竖排版方式(BOOL)及设置范围, 添加NSMutableAttributedString属性(增量编辑)
 
 @param verticalGlyphForm 横竖排版方式(BOOL)
 @param range 设置范围
 */
- (void)ch_addVerticalGlyphForm:(NSNumber *)verticalGlyphForm range:(NSRange)range;

/**
 根据横竖排版方式(BOOL), 添加NSMutableAttributedString属性(全范围设置, 增量编辑)
 
 @param verticalGlyphForm 横竖排版方式(BOOL)
 */
- (void)ch_addVerticalGlyphForm:(NSNumber *)verticalGlyphForm;

/**
 根据移除范围, 移除NSMutableAttributedString的横竖排版方式属性
 
 @param range 移除范围
 */
- (void)ch_removeVerticalGlyphFormInRange:(NSRange)range;

/**
 移除NSMutableAttributedString的横竖排版方式属性
 */
- (void)ch_removeVerticalGlyphForm;

@end

NS_ASSUME_NONNULL_END
