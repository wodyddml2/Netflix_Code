import UIKit

class SignUpView: BaseView {
    
    let netFlixTitle: UILabel = {
       let view = UILabel()
        view.text = "JFLIX"
        view.textAlignment = .center
        view.textColor = UIColor(named: "NetFlix")
        view.font = .boldSystemFont(ofSize: 40)
        return view
    }()
    
    let emailTextField: UITextField = {
       let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return view
    }()
    let passwordTextField: UITextField = {
       let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return view
    }()
    let nicknameTextField: UITextField = {
        let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return view
    }()
    let locationTextField: UITextField = {
        let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return view
    }()
    let recommendTextField: UITextField = {
        let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return view
    }()
    
    let signupButton: UIButton = {
       let view = UIButton()
        view.backgroundColor = .white
        view.setTitleColor(UIColor.black, for: .normal)
        view.setTitle("회원가입", for: .normal)
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        return view
    }()
   
    let loginSwitch: UISwitch = {
        let view = UISwitch()
        
        view.onTintColor = UIColor(named: "NetFlix")
        
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [netFlixTitle, emailTextField, passwordTextField, nicknameTextField, locationTextField, recommendTextField, signupButton, loginSwitch].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        netFlixTitle.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.centerX.equalTo(self)
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(netFlixTitle.snp.bottom).offset(UIScreen.main.bounds.height / 6)
            make.trailing.equalTo(self).offset(-30)
            make.leading.equalTo(self).offset(30)
            make.height.equalTo(40)
        }
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.trailing.equalTo(self).offset(-30)
            make.leading.equalTo(self).offset(30)
            make.height.equalTo(40)
        }
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(10)
            make.trailing.equalTo(self).offset(-30)
            make.leading.equalTo(self).offset(30)
            make.height.equalTo(40)
        }
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(10)
            make.trailing.equalTo(self).offset(-30)
            make.leading.equalTo(self).offset(30)
            make.height.equalTo(40)
        }
        recommendTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(10)
            make.trailing.equalTo(self).offset(-30)
            make.leading.equalTo(self).offset(30)
            make.height.equalTo(40)
        }
        signupButton.snp.makeConstraints { make in
            make.top.equalTo(recommendTextField.snp.bottom).offset(10)
            make.trailing.equalTo(self).offset(-30)
            make.leading.equalTo(self).offset(30)
            make.height.equalTo(50)
        }
        loginSwitch.snp.makeConstraints { make in
            make.top.equalTo(signupButton.snp.bottom).offset(10)
            make.trailing.equalTo(self).offset(-30)
            
        }
    }
}
