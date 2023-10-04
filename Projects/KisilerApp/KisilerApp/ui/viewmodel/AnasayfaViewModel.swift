//
//  AnasayfaViewModel.swift
//  KisilerApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var kRepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]> (value: [Kisiler]())
    
    init(){
        kRepo.veritabaniKopyala()
        kisilerListesi = kRepo.kisilerListesi
    }
    func ara(aramaKelimesi:String){
        kRepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(kisi_id:Int){
        kRepo.sil(kisi_id: kisi_id)
        kisileriYukle()
    }
    
    func kisileriYukle (){
        kRepo.kisileriYukle()
    }
}
