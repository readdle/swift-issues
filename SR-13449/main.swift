class Root {}
class Child: Root {
    func doSomething() {
        print("-- \(type(of: self)) - \(#function) - will call doHomework()")
        doHomework()
        print("-- \(type(of: self)) - \(#function) - did call doHomework()")
    }
    private func eatPopcorn() {
        print("-- \(type(of: self)) - \(#function)")
    }
    func playGames() {
        print("-- \(type(of: self)) - \(#function) - SHOULD NOT HAPPEN")
        eatPopcorn()
    }
    func doHomework() {
        print("-- \(type(of: self)) - \(#function)")
    }
}

Grandchild().doSomething()
