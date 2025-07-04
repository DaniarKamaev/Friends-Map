//
//  AddFrindViewController.swift
//  Map
//
//  Created by dany on 03.07.2025.
//

import UIKit

class AddFrindViewController: UIViewController {
    
    var myId = UILabel()
    var id = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navController()
        creatadIdLable(myId, id)
    }
    private func navController() {
        navigationController?.navigationBar.isHidden = false
        let buttonSave = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(tapSaveButton))
        navigationItem.rightBarButtonItem = buttonSave
    }
    
    
    func creatadIdLable(_ lable: UILabel, _ id: String) {
        lable.frame = CGRect(x: 0, y: 200, width: 300, height: 50)
        lable.font = .boldSystemFont(ofSize: 40)
        lable.text = "Your ID = \(id)"
    }
    //MARK: - Selectors
    @objc func tapSaveButton() {
        navigationController?.popViewController(animated: true)
        
    }
    
}
