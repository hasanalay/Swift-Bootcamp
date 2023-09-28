//
//  KisiKayitViewModel.swift
//  KisilerApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation
class KisiKayitViewModel {
    var kRepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        kRepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
