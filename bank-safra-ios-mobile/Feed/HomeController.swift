import UIKit

class HomeController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 23/255, green: 27/255, blue: 58/255, alpha: 1.0)
        setupLayout()
    }
    
    // MARK: itens na tela
    
    private lazy var image2: UIImageView = {
        let iv2 = UIImageView()
        iv2.translatesAutoresizingMaskIntoConstraints = false
        iv2.contentMode = .scaleAspectFill
        iv2.image = UIImage(named: "predio-logo")
        return iv2
    }()
    
    private lazy var grayview: UIView  = {
        let grayview = UIView()
        grayview.translatesAutoresizingMaskIntoConstraints = false
        grayview.backgroundColor = UIColor(red: 222/255, green: 222/255, blue: 222/255, alpha: 1.0)
        return grayview
    }()
    
    private lazy var image: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "safra2-logo")
        return iv
    }()
    
    private lazy var Conteiner: UIView = {
        let childrenview = UIView()
        childrenview.translatesAutoresizingMaskIntoConstraints = false
        childrenview.backgroundColor = .white
        childrenview.layer.cornerRadius = 5
        return childrenview
    }()
    private lazy var backcolor: UIView = {
        let color = UIView()
        color.translatesAutoresizingMaskIntoConstraints = false
        color.backgroundColor = UIColor(red: 23/255, green: 27/255, blue: 58/255, alpha: 1.0)
        return color
    }()
    
    private lazy var text: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = "Login"
        txt.font = UIFont.systemFont(ofSize: 15)
        txt.textColor = UIColor(red: 181/255, green: 141/255 , blue: 72/255,alpha: 1.0)
        return txt
    }()
    private lazy var text2: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = "Informe seus dados"
        txt.font = UIFont.systemFont(ofSize: 25)
        txt.textColor = .black
        return txt
    }()
    private lazy var text3: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.layer.borderWidth = 1.0
        txt.attributedPlaceholder = NSAttributedString(string: "Agência",attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        txt.layer.borderColor = UIColor.systemGray3.cgColor
        txt.font = UIFont.systemFont(ofSize: 15)
        txt.textAlignment = .center
        return txt
    }()
    private lazy var text4: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.layer.borderWidth = 1.0
        txt.attributedPlaceholder = NSAttributedString(string: "Conta",attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        txt.layer.borderColor = UIColor.systemGray3.cgColor
        txt.font = UIFont.systemFont(ofSize: 15)
        txt.textAlignment = .center
        return txt
    }()
    private lazy var checkbox: UIButton = {
        let checkbox = UIButton()
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        checkbox.backgroundColor = .white
        checkbox.layer.borderColor = UIColor.systemGray.cgColor
        checkbox.layer.borderWidth = 1
        checkbox.layer.cornerRadius = 3
        checkbox.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        checkbox.addTarget(self, action: #selector(handleoutside), for: .touchDown)
        return checkbox
    }()
    private lazy var remenberLabel: UITextField = {
        let remenberLabel = UITextField()
        remenberLabel.text = "Lembrar minha conta"
        remenberLabel.font = UIFont.systemFont(ofSize: 17)
        remenberLabel.textColor = .systemGray
        remenberLabel.translatesAutoresizingMaskIntoConstraints = false
        return remenberLabel
    }()
    
    
    private lazy var  textButton: UIButton = {
        let tv = UIButton()
        tv.layer.borderWidth = 1
        tv.layer.borderColor = UIColor.black.cgColor
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .white
        tv.setTitleColor(UIColor.black, for: .normal)
        tv.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        tv.titleEdgeInsets = UIEdgeInsets(top: 0, left: 47, bottom: 0, right: 0)
        tv.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        tv.layer.cornerRadius = 7
        tv.setTitle("Voltar", for: .normal)
        tv.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        tv.adjustsImageWhenDisabled = false
        return tv
    }()
    private lazy var  textButton2: UIButton = {
        let tv2 = UIButton()
        tv2.layer.borderWidth = 1
        tv2.layer.borderColor = UIColor.black.cgColor
        tv2.translatesAutoresizingMaskIntoConstraints = false
        tv2.backgroundColor = .black
        tv2.setTitleColor(UIColor.white, for: .normal)
        tv2.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        tv2.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 40)
        tv2.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        tv2.layer.cornerRadius = 7
        tv2.setTitle("Acessar", for: .normal)
        tv2.adjustsImageWhenDisabled = false
        return tv2
    }()
    private lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray4
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    private lazy var safe: UIImageView = {
        let safe = UIImageView()
        safe.translatesAutoresizingMaskIntoConstraints = false
        safe.image = UIImage(named: "pivacidade-logo")
        return safe
    }()
    private lazy var backcolor2: UIView = {
        let color = UIView()
        color.translatesAutoresizingMaskIntoConstraints = false
        color.backgroundColor = UIColor(red: 23/255, green: 27/255, blue: 58/255, alpha: 1.0)
        return color
    }()
    private lazy var token: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "token-logo")
        return iv
    }()
    private lazy var service: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "atendimento-logo")
        return iv
    }()
    
    
    // MARK: adicionar subviews
    
    func setupLayout() {
        view.addSubview(image2)
        view.addSubview(grayview)
        view.addSubview(image)
        view.addSubview(Conteiner)
        Conteiner.addSubview(backcolor)
        Conteiner.addSubview(text)
        Conteiner.addSubview(text2)
        Conteiner.addSubview(text3)
        Conteiner.addSubview(text4)
        Conteiner.addSubview(checkbox)
        Conteiner.addSubview(remenberLabel)
        Conteiner.addSubview(textButton)
        Conteiner.addSubview(textButton2)
        Conteiner.addSubview(line)
        Conteiner.addSubview(safe)
        Conteiner.addSubview(backcolor2)
        grayview.addSubview(token)
        grayview.addSubview(service)
        setupUI()
    }
    
    // MARK: adicionar Constraints
    
    func setupUI() {
        let image2 = [
            image2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            image2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -40 ),
            image2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            image2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ]
        
        let grey = [
            grayview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            grayview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            grayview.heightAnchor.constraint(equalToConstant: 210)
        ]
        
        let image = [
            image.widthAnchor.constraint(equalToConstant: 130),
            image.heightAnchor.constraint(equalToConstant: 180),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -160)
            ]
        let conteiner = [
            Conteiner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            Conteiner.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            Conteiner.widthAnchor.constraint(equalToConstant:  UIScreen.main.bounds.width - 25),
            Conteiner.heightAnchor.constraint(equalToConstant: 300),
        
        ]
        let backcolor = [
            backcolor.centerYAnchor.constraint(equalTo: self.Conteiner.topAnchor, constant: 4),
            backcolor.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor),
            backcolor.widthAnchor.constraint(equalToConstant: 155),
            backcolor.heightAnchor.constraint(equalToConstant: 8)
        ]
        let txt = [
           text.leftAnchor.constraint(equalTo: self.Conteiner.leftAnchor,constant: 20),
           text.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor, constant: -120),
        ]
        let txt2 = [
            text2.leftAnchor.constraint(equalTo: self.Conteiner.leftAnchor,constant: 20),
            text2.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor, constant: -95),
        ]
        let txt3 = [
            text3.widthAnchor.constraint(equalToConstant: 150),
            text3.heightAnchor.constraint(equalToConstant: 50),
            text3.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor,constant: -90),
            text3.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor, constant: -40),
        ]
        let txt4 = [
            text4.widthAnchor.constraint(equalToConstant: 150),
            text4.heightAnchor.constraint(equalToConstant: 50),
            text4.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor,constant: 75),
            text4.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor, constant: -40),
        ]
        let checkbox = [
           checkbox.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor, constant: 15),
           checkbox.heightAnchor.constraint(equalToConstant: 15),
           checkbox.widthAnchor.constraint(equalToConstant: 15),
           checkbox.centerXAnchor.constraint(equalTo: self.Conteiner.leftAnchor,constant: 28),
        ]
       
        let remenberLabel = [
            remenberLabel.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor, constant: 15),
            remenberLabel.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor,constant: -50),
        ]
        let textButtonConstraints = [
            textButton.widthAnchor.constraint(equalToConstant: 150),
            textButton.heightAnchor.constraint(equalToConstant: 40),
            textButton.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor,constant: 70),
            textButton.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor,constant: -90)
        ]
        let textButtonConstraints2 = [
            textButton2.widthAnchor.constraint(equalToConstant: 150),
            textButton2.heightAnchor.constraint(equalToConstant: 40),
            textButton2.centerYAnchor.constraint(equalTo: self.Conteiner.centerYAnchor,constant: 70),
            textButton2.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor,constant: 75)
        ]
        
        let backcolor2 = [
            backcolor2.centerYAnchor.constraint(equalTo: self.Conteiner.bottomAnchor, constant: -4),
            backcolor2.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor),
            backcolor2.widthAnchor.constraint(equalToConstant: 155),
            backcolor2.heightAnchor.constraint(equalToConstant: 8)
        ]
        let line = [
            line.widthAnchor.constraint(equalToConstant: 315),
            line.heightAnchor.constraint(equalToConstant: 1),
            line.centerYAnchor.constraint(equalTo: self.Conteiner.bottomAnchor, constant: -42),
            line.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor, constant: -5),
        ]
        let safe = [
            safe.centerYAnchor.constraint(equalTo: self.Conteiner.bottomAnchor, constant: -35),
            safe.centerXAnchor.constraint(equalTo: self.Conteiner.centerXAnchor,constant: -75),
            safe.widthAnchor.constraint(equalToConstant: 180),
            safe.heightAnchor.constraint(equalToConstant: 65)
            
        ]
        let token = [
            token.widthAnchor.constraint(equalToConstant: 100),
            token.heightAnchor.constraint(equalToConstant: 60),
            token.centerYAnchor.constraint(equalTo: self.grayview.bottomAnchor,constant: -30),
            token.centerXAnchor.constraint(equalTo: self.grayview.centerXAnchor,constant: -110),
        ]
        let service = [
            service.widthAnchor.constraint(equalToConstant: 150),
            service.heightAnchor.constraint(equalToConstant: 60),
            service.centerYAnchor.constraint(equalTo: self.grayview.bottomAnchor,constant: -25),
            service.centerXAnchor.constraint(equalTo: self.grayview.centerXAnchor,constant: 80),
        ]
        
        NSLayoutConstraint.activate( image2 + grey + image + conteiner + textButtonConstraints + textButtonConstraints2 + txt + txt2 + txt3 + txt4 + backcolor2 + token + service + backcolor + remenberLabel + checkbox + line + safe)
    }
    
    //MARK: objc
    
    @objc func loginButtonTapped(){
        if let vc = navigationController{
            vc.popViewController(animated: true)
            }
        }
    @objc func handleTap() {
        checkbox.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 255/255, alpha: 180/255)
        }
    @objc func handleoutside() {
        checkbox.backgroundColor = .white
    }

}

