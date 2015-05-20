#import "UIViewController+ARAnalytics.h"

NSString *const kAKTrackingEventScreenKey = @"screen";

@implementation UIViewController (ARAnalytics)

- (NSString *)screenNameForTracking {
    return NSStringFromClass(self.class);
}

- (void)trackEvent:(NSString *)event withProperties:(NSDictionary *)properties {
    NSMutableDictionary *mutableProperties = [NSMutableDictionary dictionaryWithDictionary:properties];
    
    if (!mutableProperties[kAKTrackingEventScreenKey]) {
        NSString *screenName = [self screenNameForTracking];
        if (screenName.length > 0) {
            mutableProperties[kAKTrackingEventScreenKey] = screenName;
        }
    }
    
    [super trackEvent:event withProperties:mutableProperties];
}

@end
