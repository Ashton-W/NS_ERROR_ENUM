#import <Foundation/Foundation.h>

// use new types and use new enum with single argument like NSURLError does

FOUNDATION_EXPORT NSErrorDomain const ExampleThreeErrorDomain;

//FOUNDATION_EXPORT NSErrorUserInfoKey const ExampleThreeErrorUserInfoKey;

NS_ERROR_ENUM(ExampleThreeErrorDomain) {
    ExampleThreeErrorFoo
};
