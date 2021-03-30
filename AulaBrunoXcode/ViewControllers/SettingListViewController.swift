//
//  ViewController.swift
//  AulaBrunoXcode
//
//  Created by Wladmir Edmar Silva Junior on 26/02/21.
//

import UIKit

struct Item {
    var imageIcon: UIImage?
    var title: String
    var clickIcon: UIImage?
}

class SettingListViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Properties
    var arrayItens: [Item] = [Item(imageIcon: UIImage(named: "general"),
                                   title: "General",
                                   clickIcon: UIImage(named: "maior")),
                              
                              Item(imageIcon: UIImage(named: "Clock"),
                                   title: "Relogio",
                                   clickIcon: UIImage(named: "maior")),
                              
                              Item(imageIcon: UIImage(named: "Mail"),
                                   title: "Mail",
                                   clickIcon: UIImage(named: "maior")),
                              
                              Item(imageIcon: UIImage(named: "Maps"),
                                   title: "Maps",
                                   clickIcon: UIImage(named: "maior")),
                              
                              Item(imageIcon: UIImage(named: "Phone"),
                                   title: "Phone",
                                   clickIcon: UIImage(named: "maior")),
                              
                              Item(imageIcon: UIImage(named: "Photos"),
                                   title: "Photos",
                                   clickIcon: UIImage(named: "maior")),
                              
                              Item(imageIcon: UIImage(named: "Podcast"),
                                   title: "PodCast",
                                   clickIcon: UIImage(named: "maior")),
                              
    ]

    public var count = 1
    
    
    
    // MARK: - View Life Cycle
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ESTOU INDO PARA OUTRA TELA", segue.destination)
        
        if let settingItemDetailVC = segue.destination as? SettingItemDetailViewController {
           settingItemDetailVC.message = sender as? String
        }
    }
}



// MARK: - UITableViewDataSource
extension SettingListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItens.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        let item = arrayItens[indexPath.row]

        cell.titleLabel.text = item.title
        cell.iconImage.image = item.imageIcon
        cell.clickIcon.image = item.clickIcon
        return cell
    }
}


// MARK: - UITableViewDelegate
extension SettingListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("LINHA \(arrayItens[indexPath.row].title) SELECIONADA")
        self.performSegue(withIdentifier: "goToItemDetail", sender: arrayItens[indexPath.row].title)
    }
}


// MARK: - Métodos de Teste

extension SettingListViewController {
    
    public func addNumber() {
        count += 1
    }

    public func removeNumber() {
        count -= 1
    }
}

