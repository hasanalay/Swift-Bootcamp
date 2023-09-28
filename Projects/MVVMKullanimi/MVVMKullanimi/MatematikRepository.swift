//
//  MatematikRepository.swift
//  MVVMKullanimi
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation
import RxSwift

class MatematikRepository {
    var sonuc = BehaviorSubject<String>(value: "0") //Tanımlama
    
    func topla(alinanSayi1:String, alinanSayi2:String) {
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let toplam = sayi1 + sayi2
            //sonuc = String(toplam)
            sonuc.onNext(String(toplam)) //Tetikleme
        }
    }
    
    func carp(alinanSayi1:String, alinanSayi2:String) {
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let carpma = sayi1 * sayi2
            //sonuc = String(carpma)
            sonuc.onNext(String(carpma))//Tetikleme
        }
    }
}
