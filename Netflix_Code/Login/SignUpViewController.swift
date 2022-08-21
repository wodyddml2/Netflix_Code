import UIKit

class SignUpViewController: BaseViewController {

    let mainView = SignUpView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .black

    }
    


}
