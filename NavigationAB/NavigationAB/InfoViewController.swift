//
//  InfoViewController.swift
//  NavigationAB
//
//  Created by MacBook Pro 13 2020 on 04.03.2022.
//

import UIKit

    class InfoViewController: UIViewController {

    private var button = UIButton(frame: CGRect(x: 45, y: 670, width: 300, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.setupButton()
        self.view.addSubview(button)
        self.button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

        }

    private func setupButton() {
        self.button.layer.cornerRadius = 12
        self.button.clipsToBounds = true
        self.button.backgroundColor = .systemBlue
        self.button.setTitleColor(.white, for: .highlighted)
        self.button.setTitle("Подробнее", for: .normal)

    }

    @objc private func didTapButton() {
        let alert = UIAlertController(title: "Внимание", message: "Что-то важное", preferredStyle: .alert)
        alert.addAction(UIAlertAction(
            title: "OK",
            style:
            .default) {
                action in
        })

       let tryAgain = UIAlertAction(title: "Отмена", style: .default) { (action) in
            }
        alert.addAction(tryAgain)
        self.present(alert, animated: true, completion: nil)
    }

}

