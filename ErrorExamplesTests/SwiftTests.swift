import XCTest
import ErrorExamples

class SwiftTests: XCTestCase {
    
    func testExampleOne() {
        let error = NSError(domain: ExampleOneErrorDomain, code: ExampleOneError.foo.rawValue, userInfo: nil) as Error
        
        switch error {
        case ExampleOneError.foo:
            print("foo")
        default:
            XCTFail("Didn't match foo: \(error)")
        }
    }
    
    func testExampleTwo() {
        let error = NSError(domain: ExampleTwoErrorDomain, code: ExampleTwoError.foo.rawValue) as Error
        
        switch error {
        case ExampleTwoError.foo:
            print("foo")
        default:
            XCTFail("Didn't match foo: \(error)")
        }
    }
    
    func testExampleThree() {
        // should match URLError
        let error = NSError(domain: ExampleThreeErrorDomain, code: ExampleThreeErrorFoo) as Error
        
        switch error {
        // Expression pattern of type 'Int' cannot match values of type 'Error'
        // URLError is magic not caused by NS_ERROR_ENUM
        //case ExampleThreeErrorFoo:
        default:
            XCTFail("Didn't match foo: \(error)")
        }
    }
    
    func testExampleFour() {
        let error = NSError(domain: ExampleFourErrorDomain, code: ExampleFourError.Code.foo.rawValue) as Error

        switch error {
        case ExampleFourError.Code.foo:
            print("foo")
        default:
            XCTFail("Didn't match foo: \(error)")
        }
    }
    
    func testURLError() {
        let error = NSError(domain: NSURLErrorDomain, code: NSURLErrorNotConnectedToInternet, userInfo: nil) as Error
        
        switch error {
        case URLError.notConnectedToInternet:
            print("foo")
        default:
            XCTFail("Didn't match foo: \(error)")
        }
    }

}
