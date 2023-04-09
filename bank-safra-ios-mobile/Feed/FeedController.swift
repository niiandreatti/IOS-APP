import UIKit

class FeedController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors().colorSplash
        
        setupLayout()
        
    }
    // MARK: itens in screen
    
    private lazy var image: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "safra-logo-splash")
        return iv
    }()
    
    private lazy var  textbutton: UIButton = {
        let tv = UIButton()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .white
        tv.setTitleColor(UIColor.black, for: .normal)
        tv.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        tv.titleEdgeInsets = UIEdgeInsets(top: 0, left: 56, bottom: 0, right: 0)
        tv.titleLabel?.font = UIFont.systemFont(ofSize: 21)
        tv.layer.cornerRadius = 7
        tv.setTitle("Abra sua conta", for: .normal)
        tv.adjustsImageWhenDisabled = false
        return tv
    }()
    
    private lazy var homeiv: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "home-feed")
        return iv
    }()
    
    private lazy var arrowiv: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "arrow-feed")
        return iv
    }()
    
    // MARK: add subviews
    
    func setupLayout() {
        view.addSubview(image)
        view.addSubview(textbutton)
        textbutton.addSubview(homeiv)
        textbutton.addSubview(arrowiv)
        
        setupUI()
    }
    
    // MARK: add Constraints
    
    func setupUI() {
        let imageLogo = [
            image.widthAnchor.constraint(equalToConstant: 130),
            image.heightAnchor.constraint(equalToConstant: 180),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120),
        ]
        
        let button = [
            textbutton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30),
            textbutton.heightAnchor.constraint(equalToConstant: 50),
            textbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textbutton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
        ]
        
        let homeiv = [
            homeiv.widthAnchor.constraint(equalToConstant: 40),
            homeiv.heightAnchor.constraint(equalToConstant: 35),
            homeiv.centerYAnchor.constraint(equalTo: textbutton.centerYAnchor, constant: -3),
            homeiv.leftAnchor.constraint(equalTo: textbutton.safeAreaLayoutGuide.leftAnchor, constant: 10),
        ]
        let arrowiv = [
            arrowiv.widthAnchor.constraint(equalToConstant: 60),
            arrowiv.heightAnchor.constraint(equalToConstant: 30),
            arrowiv.centerYAnchor.constraint(equalTo: textbutton.centerYAnchor),
            arrowiv.rightAnchor.constraint(equalTo: textbutton.safeAreaLayoutGuide.rightAnchor, constant: -10),
        ]
        
        
        NSLayoutConstraint.activate(imageLogo + button + homeiv + arrowiv)
    }
    
}
