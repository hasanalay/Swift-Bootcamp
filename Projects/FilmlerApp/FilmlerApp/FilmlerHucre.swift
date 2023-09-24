//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Hasan Alay on 24.09.2023.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath:IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var labelFiyat: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath:indexPath!)
    }
}
