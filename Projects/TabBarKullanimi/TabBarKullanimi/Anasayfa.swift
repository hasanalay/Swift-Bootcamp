//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Hasan Alay on 17.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Update"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemappearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemappearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemappearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    func renkDegistir (itemappearance:UITabBarItemAppearance) {
        // seçili durum
        itemappearance.selected.iconColor = UIColor.systemOrange
        itemappearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange]
        itemappearance.selected.badgeBackgroundColor = UIColor.systemMint
        
        //seçili olmayan durum
        itemappearance.normal.iconColor = UIColor.white
        itemappearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
        itemappearance.normal.badgeBackgroundColor = UIColor.lightGray
    }

}

