#import <Foundation/Foundation.h>

// most basic, using no new conventions

FOUNDATION_EXPORT NSString * const ExampleOneErrorDomain;

FOUNDATION_EXPORT NSString * const ExampleOneErrorUserInfoKey;

typedef NS_ENUM(NSInteger, ExampleOneError) {
    ExampleOneErrorFoo
};
