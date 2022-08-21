import UIKit

class NetflixViewController: BaseViewController {

    var mainView = NetflixView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    override func configureUI() {
        mainView.logoButton.addTarget(self, action: #selector(logoButtonClicked), for: .touchUpInside)

    }
    
    @objc func logoButtonClicked() {
        let signupVC = SignUpViewController()
        signupVC.modalPresentationStyle = .fullScreen
        
        present(signupVC, animated: true)
    }
    
    
  
}
