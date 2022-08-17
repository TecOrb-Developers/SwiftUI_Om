#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "JDStatusBarNotification.h"
#import "JDStatusBarNotificationPresenter.h"
#import "JDStatusBarNotificationPresenterPrepareStyleBlock.h"
#import "JDStatusBarNotificationStyle.h"

FOUNDATION_EXPORT double JDStatusBarNotificationVersionNumber;
FOUNDATION_EXPORT const unsigned char JDStatusBarNotificationVersionString[];

