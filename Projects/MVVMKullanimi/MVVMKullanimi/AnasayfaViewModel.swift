//
//  AnasayfaViewModel.swift
//  MVVMKullanimi
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation
import RxSwift

class anasayfaViewModel {
    var sonuc = BehaviorSubject<String>(value: "0") //Tanımlama
    var mRepo = MatematikRepository()
    
    init(){
        sonuc = mRepo.sonuc //Bağlantı
    }
    
    func topla(alinanSayi1:String, alinanSayi2:String) {
        mRepo.topla(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    
    func carp(alinanSayi1:String, alinanSayi2:String) {
        mRepo.carp(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
}
