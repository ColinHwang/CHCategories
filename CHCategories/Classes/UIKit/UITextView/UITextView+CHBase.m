//
//  UITextView+CHBase.m
//  Pods
//
//  Created by CHwang on 17/4/28.
//
//

#import "UITextView+CHBase.h"
#import "NSValue+CHBase.h"

@implementation UITextView (CHBase)

#pragma mark - Base
- (NSRange)ch_markedRange {
    if (!self) return CHNSRangeZero;
    if (!self.markedTextRange || self.markedTextRange.isEmpty) return CHNSRangeZero;
    
    NSInteger location = [self offsetFromPosition:self.beginningOfDocument toPosition:self.markedTextRange.start];
    NSInteger length = [self offsetFromPosition:self.markedTextRange.start toPosition:self.markedTextRange.end];
    return NSMakeRange(location, length);
}

@end
