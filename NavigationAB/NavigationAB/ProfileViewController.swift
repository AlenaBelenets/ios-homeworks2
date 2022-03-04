//
//  ProfileViewController.swift
//  NavigationAB
//
//  Created by MacBook Pro 13 2020 on 04.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
       var postTitle = Post(title: "Профиль")
       var closure: (() -> Void)?

       override func viewDidLoad() {
           super.viewDidLoad()
           self.view.backgroundColor = .systemMint
           //self.postTitle.title = self.title
        }
}
