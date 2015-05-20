#import <UIKit/UIKit.h>

FOUNDATION_EXPORT NSString *const kAKTrackingEventScreenKey;
@interface UIViewController (ARAnalytics)
- (NSString *)screenNameForTracking;
@end
