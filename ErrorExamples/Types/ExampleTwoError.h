#import <Foundation/Foundation.h>

// use new types

FOUNDATION_EXPORT NSErrorDomain const ExampleTwoErrorDomain;

FOUNDATION_EXPORT NSErrorUserInfoKey const ExampleTwoErrorUserInfoKey;

typedef NS_ENUM(NSInteger, ExampleTwoError) {
    ExampleTwoErrorFoo
};
