//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by Hasan Alay on 24.09.2023.
//

import UIKit

class DetaySayfa: UIViewController {
    
    @IBOutlet weak var labelFiyat: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFilm: UILabel!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let f = film {
            labelFilm.text = f.ad
            imageViewFilm.image = UIImage(named: f.resim!)
            labelFiyat.text = "\(f.fiyat!) ₺"
        }
        
        
    }
    
    
    
}
