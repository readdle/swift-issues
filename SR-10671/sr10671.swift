func foo() {
	
	func closureStub(a: Int) {
		var b = a
	    b = b + 1
	}
		
    let x: (Int) -> Void = { (a: Int) in
        closureStub(a: a)
    }
}
