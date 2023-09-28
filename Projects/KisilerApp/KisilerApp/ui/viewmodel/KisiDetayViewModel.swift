//
//  KisiDetayViewModel.swift
//  KisilerApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation

class KisiDetayViewModel {
    var kRepo = KisilerDaoRepository()
    
    func guncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String) {
        kRepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
