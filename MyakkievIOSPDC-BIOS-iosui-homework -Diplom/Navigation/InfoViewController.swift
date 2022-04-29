//
//  InfoViewController.swift
//  Navigation
//
//  Created by 1 on 05.04.2022.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        self.view.addSubview(alertButton)
        self.setupButton()
        }

    let alertButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.backgroundColor = .darkGray
        button.setTitle("Allert!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    private func setupButton() {
        alertButton.addTarget(self, action: #selector(didTapAlertButton), for: .touchUpInside)
        self.alertButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.alertButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.alertButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.alertButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc private func didTapAlertButton() {
        let alert = UIAlertController (title: "Attention!", message: "Are you sure in this action?", preferredStyle: .alert)
        let yesButton = UIAlertAction (title: "Yes", style: .default, handler: {action in print ("Yes")})
        let noButton = UIAlertAction (title: "No", style: .default, handler: {action in print ("No")})
        alert.addAction(yesButton)
        alert.addAction(noButton)
        present (alert, animated: true, completion: nil)
    }
}
