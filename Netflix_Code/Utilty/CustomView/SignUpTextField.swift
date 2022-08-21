import UIKit

class SignUpTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        backgroundColor = .lightGray
        textColor = .white
        textAlignment = .center
        layer.masksToBounds = true
        layer.cornerRadius = 10
        
    }
}
