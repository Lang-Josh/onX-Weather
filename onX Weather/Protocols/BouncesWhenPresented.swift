import QuartzCore

protocol BouncesWhenPresented {
    var bounceAnimation: CAKeyframeAnimation { get }
    var timingFunctionEaseInEaseOut: CAMediaTimingFunction { get set }
    
    func bounce()
}

extension BouncesWhenPresented {
    
    internal var bounceAnimation: CAKeyframeAnimation {
        let animation = CAKeyframeAnimation(keyPath: "transform.scale")
        animation.duration = 0.75
        animation.values = [0.05, 1.25, 0.8, 1.1, 0.9, 1.0]
        animation.timingFunctions = [
            timingFunctionEaseInEaseOut,
            timingFunctionEaseInEaseOut,
            timingFunctionEaseInEaseOut,
            timingFunctionEaseInEaseOut,
            timingFunctionEaseInEaseOut,
            timingFunctionEaseInEaseOut
        ]
        animation.isRemovedOnCompletion = true
        return animation
    }
}
