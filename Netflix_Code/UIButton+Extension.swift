import UIKit

extension UIButton {
    func whiteColorButton(title: String, size: CGFloat) {
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: size)
    }
}
