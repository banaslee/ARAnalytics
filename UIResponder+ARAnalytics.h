#import <UIKit/UIKit.h>

@interface UIResponder (ARAnalytics)
- (void)trackEvent:(NSString *)event withProperties:(NSDictionary *)properties;
@end
