import UIKit

@available(iOS 10.0, *)
open class CustomIntensityVisualEffectView: UIVisualEffectView {
    @available(iOS 10.0, *)
    private var animator: UIViewPropertyAnimator!

    /// Create visual effect view with given effect and its intensity
    ///
    /// - Parameters:
    ///   - effect: visual effect, eg UIBlurEffect(style: .dark)
    ///   - intensity: custom intensity from 0.0 (no effect) to 1.0 (full effect) using linear scale

    public init(effect: UIVisualEffect?, intensity: CGFloat) {
        super.init(effect: nil)
        if #available(iOS 10, *) {
            animator = UIViewPropertyAnimator(duration: 1, curve: .linear) { [weak self] in self?.effect = effect }
            animator.fractionComplete = intensity
        } else {
        }
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError()
    }

}
