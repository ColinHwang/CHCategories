//
//  UIControl+CHRepeatClickPrevention.m
//  Pods
//
//  Created by CHwang on 17/2/11.
//
//

#import "UIControl+CHRepeatClickPrevention.h"
#import "NSObject+CHBase.h"

static const int CH_UI_CONTROL_REPEAT_CLICK_PREVENTION_KEY;
static const int CH_UI_CONTROL_ACCEPT_EVENT_INTERVAL_KEY;
static const int CH_UI_CONTROL_IGNORE_EVENT_KEY;

@implementation UIControl (CHRepeatClickPrevention)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL selectors[] = {
            @selector(sendAction:to:forEvent:),
        };
        CHNSObjectSwizzleInstanceMethodsWithNewMethodPrefix(self, selectors, @"_ch_ui_control_");
    });
}

- (BOOL)ch_repeatClickPrevention {
    return [[self ch_getAssociatedValueForKey:&CH_UI_CONTROL_REPEAT_CLICK_PREVENTION_KEY] boolValue];
}

- (void)setCh_repeatClickPrevention:(BOOL)repeatClickPrevention {
    [self ch_setAssociatedValue:@(repeatClickPrevention) withKey:&CH_UI_CONTROL_REPEAT_CLICK_PREVENTION_KEY];
}

- (NSTimeInterval)ch_acceptEventInterval {
    return [[self ch_getAssociatedValueForKey:&CH_UI_CONTROL_ACCEPT_EVENT_INTERVAL_KEY] doubleValue];
}

- (void)setCh_acceptEventInterval:(NSTimeInterval)acceptEventInterval {
    [self ch_setAssociatedValue:@(acceptEventInterval) withKey:&CH_UI_CONTROL_ACCEPT_EVENT_INTERVAL_KEY];
}

- (BOOL)ch_ignoreEvent {
    return [[self ch_getAssociatedValueForKey:&CH_UI_CONTROL_IGNORE_EVENT_KEY] boolValue];
}

- (void)setCh_ignoreEvent:(BOOL)ignoreEvent {
    [self ch_setAssociatedValue:@(ignoreEvent) withKey:&CH_UI_CONTROL_IGNORE_EVENT_KEY];
}

#pragma mark - Swizzle
- (void)_ch_ui_control_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    if (!self.ch_repeatClickPrevention) {
        [self _ch_ui_control_sendAction:action to:target forEvent:event];
        return;
    }
    
    if (self.ch_ignoreEvent) return;
    if (self.ch_acceptEventInterval > 0) {
        self.ch_ignoreEvent = YES;
        [self performSelector:@selector(_ch_setupIgnoreEvent:) withObject:@(NO) afterDelay:self.ch_acceptEventInterval];
    }
    
    [self _ch_ui_control_sendAction:action to:target forEvent:event];
}

- (void)_ch_setupIgnoreEvent:(NSNumber *)value {
    BOOL ignoreEvent = [value boolValue];
    [self setJx_ignoreEvent:ignoreEvent];
}

@end
