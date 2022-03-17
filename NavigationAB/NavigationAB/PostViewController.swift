//
//  PostViewController.swift
//  NavigationAB
//
//  Created by MacBook Pro 13 2020 on 04.03.2022.
//

import UIKit

final class PostViewController: UIViewController {

    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.setupViews()
    }

        private func setupViews() {
            createCustomNavigationBar()

            self.navigationItem.title = self.post?.title

            let rightButton = createCustomButtom(
                imageName: "ellipsis.circle",
                selector: #selector(rightButtonTapped)
            )
            navigationItem.rightBarButtonItem = rightButton
        }


    @objc private func rightButtonTapped() {
            let infoViewController = InfoViewController()
            self.present(infoViewController, animated: true, completion: nil)
        }

}
