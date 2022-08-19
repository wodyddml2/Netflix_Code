import UIKit

class PreviewImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        layer.masksToBounds = true
        layer.borderWidth = 3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = self.frame.height / 2
    }
}
