import UIKit

// Try Catch
// 1. Compile Error
let sayi = 10
//sayi = 50

// 2. Runtime Error : Exception

// hataları özelleştirme
enum Hatalar:Error {
    case sifiraBolunmeHatasi
}
//hata üretebilen fonksiyon yazımı
func bolme(sayi1:Int, sayi2:Int) throws -> Int{
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

// catch mantığı
do {
    let sonuc =  try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch { // burada istenen hata çalıştırılabilir - Hatalar.sifiraBolünmeHatasi
    print("İŞLEM SIRASINDA BİR HATA OLUŞTU")
}

// optional ile daha kısa bir kullanım
let sonuc1 = try? bolme(sayi1: 10, sayi2: 0)
if let temp = sonuc1{
    print(temp)
}else {
    print("Hata oluştu")
}
