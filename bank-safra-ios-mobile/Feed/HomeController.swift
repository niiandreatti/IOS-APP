import UIKit

class HomeController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    // MARK: itens na tela
    
    private lazy var  textButton: UIButton = {
        let tv = UIButton()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .white
        tv.setTitleColor(UIColor.black, for: .normal)
        tv.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        tv.titleEdgeInsets = UIEdgeInsets(top: 0, left: 56, bottom: 0, right: 0)
        tv.titleLabel?.font = UIFont.systemFont(ofSize: 21)
        tv.layer.cornerRadius = 7
        tv.setTitle("login", for: .normal)
        tv.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        tv.adjustsImageWhenDisabled = false
        return tv
    }()
    
    
    // MARK: adicionar subviews
    
    func setupLayout() {
        
        view.addSubview(textButton)
        setupUI()
    }
    
    // MARK: adicionar Constraints
    
    func setupUI() {
        
        let textButtonConstraints = [
            textButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30),
            textButton.heightAnchor.constraint(equalToConstant: 50),
            textButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
        ]
        
        NSLayoutConstraint.activate(textButtonConstraints)
    }
    
    //MARK: objc
    
    @objc func loginButtonTapped(){
        for viewController in navigationController?.viewControllers ?? [] {
            if let feedController = viewController as? FeedController {
                navigationController?.popToViewController(feedController, animated: true)
                return
            }
        }
    }
}

