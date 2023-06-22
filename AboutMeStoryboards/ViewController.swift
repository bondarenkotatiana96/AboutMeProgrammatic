//
//  ViewController.swift
//  AboutMeStoryboards
//
//  Created by user on 6/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View properties

//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var imageView: UIImageView!
//    @IBOutlet weak var bioLabel: UILabel!
//    @IBOutlet weak var textField: UITextField!
//    @IBOutlet weak var button: UIButton!
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Tatiana Bondarenko"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .purple
        return label
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "IMG_3570")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var bioLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada pellentesque elit eget gravida cum. Dui nunc mattis enim ut. Ac felis donec et odio. Et tortor at risus viverra adipiscing at in tellus integer."
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Send me a message"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        button.setTitle("Send", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews()
        constraintView()
    }
    
    func addSubviews() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(bioLabel)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
    }
    
    func constraintView() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 200),
            button.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.5)
        ])
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        print(textField.text)
    }

//    @IBAction func buttonTapped(_ sender: UIButton) {
//        print("Hello")
//        print(textField.text)
//    }
}

