#import <UIKit/UIKit.h>

FOUNDATION_EXPORT NSString *const kARAnalyticsEventScreenKey;
@interface UIViewController (ARAnalytics)
- (NSString *)screenNameForTracking;
@end
