#import "UIViewController+ARAnalytics.h"

NSString *const kARAnalyticsEventScreenKey = @"screen";

@interface UIResponder ()
- (void)trackEvent:(NSString *)event withProperties:(NSDictionary *)properties;
@end

@implementation UIViewController (ARAnalytics)

- (NSString *)screenNameForTracking {
    return NSStringFromClass(self.class);
}

- (void)trackEvent:(NSString *)event withProperties:(NSDictionary *)properties {
    NSMutableDictionary *mutableProperties = [NSMutableDictionary dictionaryWithDictionary:properties];
    
    if (!mutableProperties[kARAnalyticsEventScreenKey]) {
        NSString *screenName = [self screenNameForTracking];
        if (screenName.length > 0) {
            mutableProperties[kARAnalyticsEventScreenKey] = screenName;
        }
    }
    
    [super trackEvent:event withProperties:mutableProperties];
}

@end
