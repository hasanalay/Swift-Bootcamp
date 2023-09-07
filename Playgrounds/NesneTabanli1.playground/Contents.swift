import UIKit

class Urunler {
    var renk: String?
    var fiyat:Int?
    var stokDurum:Bool?
    
    init(){
        print("boş constructor")
    }
    init (renk:String,fiyat:Int, stokDurum:Bool){
        self.renk = renk
        self.fiyat = fiyat
        self.stokDurum = stokDurum // shadowing
    }
    func satisBaslat (){ //Side effect - bir fonksiyonla bulunduğu class ın özelliğini değiştirmek
        stokDurum = true
    }
    func satisDurdur (){
        stokDurum = false
    }
    func fiyatArttir(kacFiyat:Int){
        fiyat! += kacFiyat
    }
    func fiyatDusur(kacFiyat:Int){
        fiyat! -= kacFiyat
    }
    func bilgiAl()  {
        print("-----------------------")
        print("Renk        : \(renk!)")
        print("Fiyat       : \(fiyat!)₺")
        print("Stok Durumu : \(stokDurum!)")
    }
}

// nesne oluşturma
let tv = Urunler(renk: "Beyaz", fiyat: 35000, stokDurum: true)
tv.bilgiAl()

// değer atama
tv.renk = "Siyah"
tv.fiyat = 10000
tv.stokDurum = true

// değer okuma
tv.bilgiAl()
tv.satisDurdur()
tv.bilgiAl()
tv.satisBaslat()
tv.bilgiAl()
tv.fiyatArttir(kacFiyat: 1000)
tv.bilgiAl()
tv.fiyatDusur(kacFiyat: 2500)
tv.bilgiAl()

let saat = Urunler()

saat.renk = "Metalik"
saat.fiyat = 5000
saat.stokDurum = false

saat.bilgiAl()
saat.satisBaslat()
saat.bilgiAl()
saat.fiyatArttir(kacFiyat: 4000)
saat.bilgiAl()
print("-----------------------")
// Ders 3 burada başlıyor
class Fonksiyonlar {
    // void : geri dönüş değeri yok
    ///void method
    func selamla1 () {
        let sonuc = "Merhaba Hasan"
        print(sonuc)
    }
    // return : geri dönüş değeri olan
    ///returns a string
    func selamla2() -> String{
        let sonuc = "Merhaba Sedat"
        return sonuc
    }
    // parametrik
    func selamla3 (isim:String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    func topla(sayi1:Int, sayi2:Int) -> Int{
        let toplam = sayi1 + sayi2
        return toplam
    }
    // Overloading
    func carpma(sayi1:Int, sayi2:Int){
        print("çarpma: \(sayi1 * sayi2)")
    }
    func carpma(sayi1:Double, sayi2:Double){
        print("çarpma: \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int, sayi2:Int, isim:String){
        print("çarpma: \(sayi1 * sayi2) - İşlem Yapan: \(isim)")
    }
}

let f = Fonksiyonlar()

f.selamla1()

let gelenSonuc = f.selamla2()
print("Gelen sonuç: \(gelenSonuc)")

f.selamla3(isim: "Ahmet")

let gelenToplam = f.topla(sayi1: 1, sayi2: 3)
print("Gelen toplam: \(gelenToplam)")

f.carpma(sayi1: 5, sayi2: 10)
f.carpma(sayi1: 5.2, sayi2: 10.5)
f.carpma(sayi1: 5, sayi2: 5, isim: "HASAN")
print("------------------")

class ASinifi {
    var x = 10
    func metod (){
        print("Metod çalıştı")
    }
}

let a = ASinifi()

print(a.x)
a.metod()
print("------------------")

// Virtual Object -Nameless Object
print(ASinifi().x) // 1. nesne (sanal)
ASinifi().metod()  // 2. nesne (sanal)

// Önemli
class BSinifi {
    static var x = 10
    static func metod (){
        print("Static Metod çalıştı")
    }
}
print("------------------")
print(BSinifi.x)
BSinifi.metod()
print("*------------------*")

// Enum - Enumeration
enum KonserveBoyut{
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut {
        case .kucuk: print("Ücret : \(adet * 18)₺")
        case .orta: print("Ücret : \(adet * 25)₺")
        case .buyuk: print("Ücret : \(adet * 47)₺")
    }
        
}

ucretHesapla(boyut: .kucuk, adet: 110)


// Composition

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler? //Composition
    var yonetmen:Yonetmenler? //Composition
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1)
print("----------------------------------")
print("Film id         : \(f1.film_id!)")
print("Film ad         : \(f1.film_ad!)")
print("Film yıl        : \(f1.film_yil!)")
print("Film kategorisi : \(f1.kategori!.kategori_ad!)")
print("Film yönetmeni  : \(f1.yonetmen!.yonetmen_ad!)")

