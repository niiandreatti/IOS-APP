//
//  SplashViewController.swift
//  bank-safra-ios-mobile
//
//  Created by Nicolas Santana on 07/04/23.
//

import UIKit

class SplashViewController: UIViewController, ViewControllerProtocolsVip {
    let interactor: SplashInteractorLogic
    let router: SplashViewControllerRouter
    
    init(interactor: SplashInteractorLogic, router: SplashViewControllerRouter) {
        self.interactor = interactor
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors().colorSplash
    
        setupLayout()
        setupShapeLayer()
        didTapFeedController()
        setupStatusBarHidden()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
    // MARK: itens in screen
    
    private var image: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "safra-logo-splash")
        return iv
    }()
    
    private lazy var shapeLayer: CAShapeLayer = {
        let shapeLayer = CAShapeLayer()
        let circuparPath = UIBezierPath(arcCenter: CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2 + 55), radius: 12, startAngle: CGFloat(-0.5 * .pi), endAngle: CGFloat(1.5 * .pi), clockwise: true)
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        shapeLayer.path = circuparPath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.strokeEnd = 0
        shapeLayer.lineWidth = 4
        shapeLayer.lineCap = .round
        shapeLayer.isHidden = true
        
        basicAnimation.toValue = 1
        basicAnimation.duration = 1
        basicAnimation.repeatCount = .infinity
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urBasic")
        
        return shapeLayer
    }()
    
    
    // MARK: add subviews
    
    func setupLayout() {
        view.addSubview(image)
        self.view.layer.addSublayer(shapeLayer)
        
        setupUI()
        interactor.fetch()
    }
    
    // MARK: add Constraints
    
    func setupUI() {
        let imageLogo = [
            image.widthAnchor.constraint(equalToConstant: 110),
            image.heightAnchor.constraint(equalToConstant: 150),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
        ]
        
        NSLayoutConstraint.activate(imageLogo)
    }
    
    // MARK: setup shapeLayer
    
    func setupShapeLayer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.shapeLayer.isHidden = false
            setupStatusBarVisible()
        })
    }
    
    // MARK: setup navigations
    
    func didTapFeedController() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            self.router.routeToFeedController()
        })
    }
}
