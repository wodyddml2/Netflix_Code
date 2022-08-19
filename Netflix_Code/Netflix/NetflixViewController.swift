import UIKit

class NetflixViewController: BaseViewController {

    var mainView = NetflixView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
  
}
