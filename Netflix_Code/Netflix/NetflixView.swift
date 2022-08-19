import UIKit

let previewImageSize = (UIScreen.main.bounds.width / 3) - 15

class NetflixView: BaseView {
    
    
    let backgroundRandonImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Net\(Int.random(in: 1...4))")
        view.contentMode = .scaleAspectFill
        return view
    }()
    let backgroundBlackView: UIView = {
       let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    let backgroundBlurImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "background")
        return view
    }()
    
    let logoButton: UIButton = {
       let view = UIButton()
        view.whiteColorButton(title: "N", size: 55)

        return view
    }()
    let tvProgramButton: UIButton = {
       let view = UIButton()
        view.whiteColorButton(title: "TV 프로그램", size: 16)
        return view
    }()
    let movieButton: UIButton = {
        let view = UIButton()
        view.whiteColorButton(title: "영화", size: 16)
        return view
    }()
    let topContentButton: UIButton = {
        let view = UIButton()
        view.whiteColorButton(title: "내가 찜한 콘텐츠", size: 16)
        return view
    }()
    
    let bottomContentImageView: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "check")
        return view
    }()
    let bottomContentLabel: UILabel = {
       let view = UILabel()
        view.text = "내가 찜한 컨텐츠"
        view.textAlignment = .center
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 12)
        return view
    }()
    let bottomContentButton: UIButton = {
       let view = UIButton()
        view.setTitle("", for: .normal)
        
        return view
    }()
    
    let infoImageView: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "info")
        return view
    }()
    let infoLabel: UILabel = {
       let view = UILabel()
        view.text = "정보"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 12)
        return view
    }()
    let infoButton: UIButton = {
        let view = UIButton()
        view.setTitle("", for: .normal)
        return view
    }()
    
    let playButton: UIButton = {
       let view = UIButton()
        view.setBackgroundImage(UIImage(named: "play_normal"), for: .normal)
        view.setBackgroundImage(UIImage(named: "play_highlighted"), for: .highlighted)
        return view
    }()
    
    let previewLabel: UILabel = {
       let view = UILabel()
        view.text = "미리보기"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 19)
        return view
    }()
    
    let firstPreviewImageView: UIImageView = {
        let view = PreviewImageView(frame: CGRect(x: 0, y: 0, width: previewImageSize, height: previewImageSize))
        view.image = UIImage(named: "movie1")
        return view
    }()
    let secondPreviewImageView: UIImageView = {
        let view = PreviewImageView(frame: CGRect(x: 0, y: 0, width: previewImageSize, height: previewImageSize))
        view.image = UIImage(named: "movie2")
        return view
    }()
    let thirdPreviewCImageView: UIImageView = {
        let view = PreviewImageView(frame: CGRect(x: 0, y: 0, width: previewImageSize, height: previewImageSize))
        view.image = UIImage(named: "movie3")
       
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [backgroundRandonImageView,backgroundBlackView].forEach {
            self.addSubview($0)
        }
        backgroundRandonImageView.addSubview(backgroundBlurImageView)
        backgroundBlackView.addSubview(backgroundBlurImageView)
        
        [logoButton, tvProgramButton, movieButton, topContentButton, bottomContentImageView, bottomContentLabel, playButton, infoImageView,infoLabel, previewLabel, firstPreviewImageView, secondPreviewImageView, thirdPreviewCImageView].forEach {
            backgroundBlurImageView.addSubview($0)
        }
        
        bottomContentLabel.addSubview(bottomContentButton)
        infoLabel.addSubview(infoButton)
    }
    
    override func setConstraints() {
        backgroundRandonImageView.snp.makeConstraints { make in
            make.top.trailing.leading.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.8)
        }
        backgroundBlackView.snp.makeConstraints { make in
            make.top.equalTo(backgroundRandonImageView.snp.bottom)
            make.trailing.leading.bottom.equalTo(0)
        }
        backgroundBlurImageView.snp.makeConstraints { make in
            make.top.equalTo(backgroundRandonImageView)
            make.leading.trailing.equalTo(0)
            make.bottom.equalTo(backgroundBlackView)
        }
        
        //
        
        logoButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalTo(8)
        }
        tvProgramButton.snp.makeConstraints { make in
            make.centerY.equalTo(logoButton).offset(10)
            make.leading.equalTo(logoButton.snp.trailing).offset(UIScreen.main.bounds.width / 8)
        }
        movieButton.snp.makeConstraints { make in
            make.centerY.equalTo(tvProgramButton)
            make.leading.equalTo(tvProgramButton.snp.trailing).offset(15)
        }
        topContentButton.snp.makeConstraints { make in
            make.centerY.equalTo(movieButton)
            make.leading.equalTo(movieButton.snp.trailing).offset(25)
        }
        
        //
        
        bottomContentLabel.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundRandonImageView.snp.bottom).offset(-50)
            make.centerX.equalTo(self).offset(-UIScreen.main.bounds.width / 3.2)
        }
        bottomContentImageView.snp.makeConstraints { make in
            make.bottom.equalTo(bottomContentLabel.snp.top).offset(-8)
            make.centerX.equalTo(bottomContentLabel)

        }
        bottomContentButton.snp.makeConstraints { make in
            make.bottom.leading.trailing.equalTo(bottomContentLabel)
            make.top.equalTo(bottomContentImageView)
        }
        
        playButton.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.centerY.equalTo(bottomContentButton)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundRandonImageView.snp.bottom).offset(-50)
            make.centerX.equalTo(self).offset(UIScreen.main.bounds.width / 3.2)
        }
        infoImageView.snp.makeConstraints { make in
            make.bottom.equalTo(infoLabel.snp.top).offset(-8)
            make.centerX.equalTo(infoLabel)

        }
        infoButton.snp.makeConstraints { make in
            make.bottom.leading.trailing.equalTo(infoLabel)
            make.top.equalTo(infoImageView)
        }
        
        //
        
        previewLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundBlackView).offset(-10)
            make.leading.equalTo(8)
        }
        
        secondPreviewImageView.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(previewLabel.snp.bottom).offset(10)
            make.width.equalTo((UIScreen.main.bounds.width / 3) - 15)
            make.height.equalTo(secondPreviewImageView.snp.width).multipliedBy(1)
        }
        
        firstPreviewImageView.snp.makeConstraints { make in
            make.centerY.equalTo(secondPreviewImageView)
            make.trailing.equalTo(secondPreviewImageView.snp.leading).offset(-8)
            make.width.equalTo((UIScreen.main.bounds.width / 3) - 15)
            make.height.equalTo(firstPreviewImageView.snp.width).multipliedBy(1)
        }
        
        thirdPreviewCImageView.snp.makeConstraints { make in
            make.centerY.equalTo(secondPreviewImageView)
            make.leading.equalTo(secondPreviewImageView.snp.trailing).offset(8)
            make.width.equalTo((UIScreen.main.bounds.width / 3) - 15)
            make.height.equalTo(thirdPreviewCImageView.snp.width).multipliedBy(1)
           
        }
    }
    
    
}
