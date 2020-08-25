public protocol AProto {}
public class A: AProto {}
public class B {
    public func foo(_ fooClosure: (_ fooClosureArg: A) -> Void) {}
    public func bar() {
        foo { fooClosureArg in
            baz(bazArg: fooClosureArg)
        }
    }
    private func baz(bazArg: AProto) {}
}
