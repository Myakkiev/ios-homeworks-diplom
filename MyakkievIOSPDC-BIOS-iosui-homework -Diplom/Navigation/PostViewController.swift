//
//  PostViewController.swift
//  Navigation
//
//  Created by 1 on 05.04.2022.
//

import UIKit


class PostViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        let myButton = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(didTapButton))
        self.navigationItem.rightBarButtonItem = myButton
        }

    @objc func didTapButton() {
        let infoVC = InfoViewController()
        infoVC.modalPresentationStyle = .fullScreen
        self.present(infoVC, animated: true)
    }
}
