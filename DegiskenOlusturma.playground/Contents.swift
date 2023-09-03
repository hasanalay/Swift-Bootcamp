import UIKit

var studentName = "Hasan"
var studentAge = 24
var studentLength = 1.75
var studentcapitalLetter = "H"
var studentContinuoity = true

print(studentName)
print (studentAge)
print(studentLength)
print(studentcapitalLetter)
print(studentContinuoity)

//String instert
var urun_id:Int = 3416
var urun_adi:String = "Klavye"
var urun_adet:Int = 100
var urun_fiyat:Double = 149.99
var urun_tedatikci:String = "Logitech"

print("ürün id : \(urun_id)")
print("ürün adı : \(urun_adi)")
print("ürün adet : \(urun_adet)")
print("ürün fiyat : \(urun_fiyat)₺")
print("ürün tedarikçi : \(urun_tedatikci)")
print("************************")
// Constants
// Swift(let) - Java(final) - C#(Const) - Kotlin(val)

var sayi = 10
print(sayi)

sayi = 99
print(sayi)

let numara = 4
print("numara: \(numara)")
print("************************")
//Tür dönüşümü - Type Casting

// sayısal - sayısal (genel olarak riskli bir dönüşüm. Double türündeki bir değişkeni Int türüne çevirirken küsüratı siliyor.)
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)
print("************************")
// sayısal - metin dönüşümü
var sonuc3 = String(i)
var sonuc4 = String(d)
print(sonuc3)
print(sonuc4)
print("************************")
// metin - sayı dönüşümü (If let kullanmak best practice)
var yazi = "45"
if let sonuc5 = Int(yazi) {
    print(sonuc5)
}else{
    print("Dönüşüm hatası oluştu!")
}

