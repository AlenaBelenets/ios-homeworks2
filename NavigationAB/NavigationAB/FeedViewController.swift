//
//  FeedViewController.swift
//  NavigationAB
//
//  Created by MacBook Pro 13 2020 on 04.03.2022.
//

import UIKit

final class FeedViewController: UIViewController {
    private lazy var customView: CustomView = {
        let view = CustomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let button = UIButton(frame: CGRect(x: 45, y: 670, width: 300, height: 50))
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupNaigationBar()
        self.setupButton()
    }

    private func setupButton() {
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .highlighted)
        button.setTitle("Показ моих фото", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    private func setupNaigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Лента"
    }

    @objc private func didTapButton() {
        let postViewController = PostViewController()
        postViewController.closure = {
        }
        postViewController.title = "Мои фото"
        navigationController?.pushViewController(postViewController, animated: true)
    }

    private func setupView() {
        self.view.backgroundColor = .yellow
        self.view.addSubview(self.customView)
        self.view.addSubview(self.button)
    }

    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        guard
            seque.identifier == "showProfileViewController",
            let destination = seque.destination as? ProfileViewController
        else {return}
        destination.postTitle.title = "Профиль"
    }
}

struct Post {
    var title: String
}

