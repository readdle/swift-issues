import Foundation
import FoundationNetworking
import XCTest

class TestURLDataTask: XCTestCase {
    func test_timeout() {
		let config = URLSessionConfiguration.default
		config.timeoutIntervalForRequest = 8 // Value doesn't matter, 8 is just to wait less
		let session = URLSession(configuration: config, delegate: nil, delegateQueue: nil)
		let request = URLRequest(url: URL(string: "http://www.google.com:81")!) // use any host that would time out
		let callbackCalled = expectation(description: "Task callback called")
		let task = session.dataTask(with: request, completionHandler: { _, _, _ in
		    callbackCalled.fulfill()
		})
		task.resume()
		waitForExpectations(timeout: 10)
		Thread.sleep(forTimeInterval: 5)  // as Dispatch crashes asynchronously, give it some time
	}
	static var allTests: [(String, (TestURLDataTask) -> () throws -> Void)] {
        return [
            ("test_timeout", test_timeout),
        ]        
    }
}

XCTMain([
    testCase(TestURLDataTask.allTests),   
])
