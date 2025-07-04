//
//  SetingsViewController.swift
//  Map
//
//  Created by dany on 01.07.2025.
//

import UIKit

class SetingsViewController: UIViewController {
    
    var myButtonAddFrend = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        createdButtonAddFrend(myButtonAddFrend)
        
    }
    
    func createdButtonAddFrend(_ button: UIButton) {
        button.frame = CGRect(x: 0, y: 100, width: 300, height: 80)
        button.center.x = view.center.x
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 40)
        button.addTarget(self, action: #selector(tapAddButton), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func tapAddButton() {
        let vc = AddFrindViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
