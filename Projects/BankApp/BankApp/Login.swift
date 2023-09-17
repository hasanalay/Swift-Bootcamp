//
//  Login.swift
//  BankApp
//
//  Created by Hasan Alay on 16.09.2023.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var labelNoticifaction: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Yastık Altı Bank"
        labelNoticifaction.text = ""
        
        let appearence = UINavigationBarAppearance()
        
        appearence.backgroundColor = UIColor(named: "mainColor")
        appearence.titleTextAttributes = [.foregroundColor: UIColor(named: "textColor1")!, .font: UIFont(name: "BebasNeue-Regular", size: 22)!]
        
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearence
        navigationController?.navigationBar.compactAppearance = appearence
        navigationController?.navigationBar.scrollEdgeAppearance = appearence

        self.navigationController?.navigationBar.tintColor = UIColor(named: "textColor1")
        
    }

    @IBAction func butonNotCustomer(_ sender: Any) {
        
    }
    @IBAction func butonLogin(_ sender: Any) {
        labelNoticifaction.text = "A SMS was sent to your number!"
    }
}
