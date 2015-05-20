#import "UIResponder+ARAnalytics.h"

@implementation UIResponder (ARAnalytics)

- (void)trackEvent:(NSString *)event withProperties:(NSDictionary *)properties {
    [self.nextResponder trackEvent:event withProperties:properties];
}

@end
