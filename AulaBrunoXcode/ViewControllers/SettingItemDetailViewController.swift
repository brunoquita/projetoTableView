//
//  SettingItemDetailViewController.swift
//  AulaBrunoXcode
//
//  Created by Bruno Rocha on 30/03/21.
//

import UIKit

class SettingItemDetailViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet weak var textLabel: UILabel!
    
    // MARK: - Properties
    var message: String?
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let validMessage = message {
            textLabel.text = "Voce esta na tela  \(validMessage)"
        } else {
            textLabel.text = "nenhuma menssagem recebida!!!"
        }
       
    }
}
