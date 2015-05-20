#import "UIApplication+ARAnalytics.h"

#import "ARAnalytics.h"
@implementation UIApplication (ARAnalytics)

- (void)trackEvent:(NSString *)event withProperties:(NSDictionary *)properties {
    [ARAnalytics event:event withProperties:properties];
}

@end
