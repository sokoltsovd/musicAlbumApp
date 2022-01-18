import UIKit

class AuthViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)

        return scrollView
    }()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = label.font.withSize(30)
        label.text = "Lets find some songs"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    private let emailTextField: UITextField = {
//        let textField = UITextField()
//        textField.borderStyle = .roundedRect
//        textField.placeholder = "Enter email"
//        return textField
//    }()
//
//    private let passwordTextField: UITextField = {
//        let textField = UITextField()
//        textField.borderStyle = .roundedRect
//        textField.placeholder = "Enter password"
//        textField.isSecureTextEntry = true
//        return textField
//    }()
    
    private let goButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9079293609, green: 0.4978057742, blue: 0.7053093314, alpha: 1)
        button.setTitle(" LET'S GO ", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
//    private let signUpButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
//        button.setTitle("SignUP", for: .normal)
//        button.tintColor = .white
//        button.layer.cornerRadius = 10
//        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
//    private let signInButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.backgroundColor = .black
//        button.setTitle("SignIN", for: .normal)
//        button.tintColor = .white
//        button.layer.cornerRadius = 10
//        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
    private var textFieldsStackView = UIStackView()
    private var buttonsStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
//        setupDelegate()
        setConstraints()
    }

    private func setupViews() {
        title = "SignIn"
//        view.backgroundColor = .white
        
//        textFieldsStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField],
//                                          axis: .vertical,
//                                          spacing: 10,
//                                          distribution: .fillProportionally)
//
//        buttonsStackView = UIStackView(arrangedSubviews: [signInButton, signUpButton],
//                                             axis: .horizontal,
//                                             spacing: 10,
//                                             distribution: .fillEqually)
        
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
//        backgroundView.addSubview(textFieldsStackView)
        backgroundView.addSubview(loginLabel)
//        backgroundView.addSubview(buttonsStackView)
        backgroundView.addSubview(goButton)
    }
    
//    private func setupDelegate() {
//        emailTextField.delegate = self
//        passwordTextField.delegate = self
//    }
    
    @objc private func signUpButtonTapped() {
        
    }
    
    @objc private func signInButtonTapped() {
        let navVC = UINavigationController(rootViewController: AlbumsViewController())
        navVC.modalPresentationStyle = .fullScreen
        navVC.toolbar.barTintColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)
        navVC.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)
        self.present(navVC, animated: true)
    }
}

//MARK: - UITextFieldDelegate

//extension AuthViewController: UITextFieldDelegate {
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        emailTextField.resignFirstResponder()
//        passwordTextField.resignFirstResponder()
//        return true
//    }
//}

//MARK: - SetConstraints

extension AuthViewController {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            backgroundView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            backgroundView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
//        NSLayoutConstraint.activate([
//            textFieldsStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
//            textFieldsStackView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
//            textFieldsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
//            textFieldsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20)
//        ])
        
        NSLayoutConstraint.activate([
            loginLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            loginLabel.bottomAnchor.constraint(equalTo: goButton.topAnchor, constant: -30),
        ])
        
//        NSLayoutConstraint.activate([
//            signUpButton.heightAnchor.constraint(equalToConstant: 40),
//            signInButton.heightAnchor.constraint(equalToConstant: 40),
//
//        ])
        NSLayoutConstraint.activate([
            goButton.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            goButton.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor)
        ])
        
//        NSLayoutConstraint.activate([
//            buttonsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
//            buttonsStackView.topAnchor.constraint(equalTo: textFieldsStackView.bottomAnchor, constant: 30),
//            buttonsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
//        ])
    }
}

