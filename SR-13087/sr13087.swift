import Foundation

@objc
protocol BadGuy {
    func mhwahaha()
}

public class DrEvil: BadGuy {
    public func mhwahaha() {
    }
}

func evilLaughter() {
    let baddy: BadGuy = DrEvil()
    baddy.mhwahaha()
}
