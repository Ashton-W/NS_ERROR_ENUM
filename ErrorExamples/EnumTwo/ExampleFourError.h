#import <Foundation/Foundation.h>

// use new types and use new enum with two arguments

FOUNDATION_EXPORT NSErrorDomain const ExampleFourErrorDomain;

FOUNDATION_EXPORT NSErrorUserInfoKey const ExampleFourErrorUserInfoKey;

typedef NS_ERROR_ENUM(ExampleFourErrorDomain, ExampleFourErrorCode) {
    ExampleFourErrorFoo
};
