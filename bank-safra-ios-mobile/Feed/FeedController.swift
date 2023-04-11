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
    private lazy var sonview: UIView = {
        let childrenview = UIView()
        childrenview.translatesAutoresizingMaskIntoConstraints = false
        childrenview.backgroundColor = .white
        childrenview.layer.cornerRadius = 7
        return childrenview
    }()
    private lazy var conteiner: UITextField = {
        let text1 = UITextField()
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.textColor = .orange
        text1.text = "Acesso ao app"
        text1.font = UIFont.systemFont(ofSize: 13)
        text1.tintColor = UIColor(red: 181/255, green: 141/255 , blue: 72/255,alpha: 1.0
        )
        return text1
    }()
    private lazy var acess: UITextField = {
        let text2 = UITextField()
        text2.translatesAutoresizingMaskIntoConstraints = false
        text2.text = "Já sou cliente"
        text2.font = UIFont.systemFont(ofSize: 25)
        text2.textColor = .black
        return text2
    }()
    private lazy var login: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 23/255, green: 27/255, blue: 58/255, alpha: 1.0)
        button.tintColor = .white
        button.layer.cornerRadius = 7
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(Login), for: .touchUpInside)
        
        return button
    }()
   
    // MARK: add subviews
    
    func setupLayout() {
        view.addSubview(image)
        view.addSubview(textbutton)
        textbutton.addSubview(homeiv)
        textbutton.addSubview(arrowiv)
        view.addSubview(sonview)
        sonview.addSubview(conteiner)
        sonview.addSubview(acess)
        sonview.addSubview(login)
        
        setupUI()
    }
    
    // MARK: add Constraints
    
    func setupUI() {
        let imageLogo = [
            image.widthAnchor.constraint(equalToConstant: 130),
            image.heightAnchor.constraint(equalToConstant: 180),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
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
        let sonview  = [
            sonview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            sonview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -90),
            sonview.widthAnchor.constraint(equalToConstant:  UIScreen.main.bounds.width - 20),
            sonview.heightAnchor.constraint(equalToConstant: 170),
        ]
        let conteiner = [
            conteiner.leftAnchor.constraint(equalTo: self.sonview.leftAnchor,constant: 23),
            conteiner.centerYAnchor.constraint(equalTo: self.sonview.centerYAnchor, constant: -60),
        ]
        let acess = [
            acess.leftAnchor.constraint(equalTo: self.sonview.leftAnchor,constant: 23),
            acess.centerYAnchor.constraint(equalTo: self.sonview.centerYAnchor, constant: -35),
        ]
        let login = [
            login.widthAnchor.constraint(equalToConstant: 320),
            login.heightAnchor.constraint(equalToConstant: 40),
            login.centerYAnchor.constraint(equalTo: self.sonview.centerYAnchor,constant: 30),
            login.leftAnchor.constraint(equalTo: self.sonview.leftAnchor,constant: 23)
        ]
        
        
        
        
        NSLayoutConstraint.activate(imageLogo + button + homeiv + arrowiv + sonview + conteiner + acess + login)
    }
    //MARK: objc
    @objc func Login(){
        navigationController?.pushViewController(HomeController(), animated: true)
    }
    
}
