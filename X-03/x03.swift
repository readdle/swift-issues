import Foundation

class TestClass {
}

let testObject: Any = [TestClass()]
let maybeNumber = testObject as? NSNumber
print("Success")
