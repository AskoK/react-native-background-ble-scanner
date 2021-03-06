// BackgroundBleScanner.m

#import "BackgroundBleScanner.h"
#import "IOSNativeToast.h"

@interface BackgroundBleScanner()

@property (nonatomic, retain) IOSNativeToast *toast;
@end

@implementation BackgroundBleScanner

- (instancetype)init {
    self = [super init];
    if (self) {
        self.toast = [[IOSNativeToast alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSString *)text)
{
    [self.toast showToast:text];
}

// RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
// {

//     // TODO: Implement some actually useful functionality
//     // callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
//     [self.toast showToast:text];

// }

@end
