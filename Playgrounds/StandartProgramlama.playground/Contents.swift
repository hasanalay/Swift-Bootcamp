import UIKit

// Karşılaştırma Operatörleri
var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b)")
print("a != b : \(a != b)")
print("a >  b : \(a >  b)")
print("a >= b : \(a >= b)")
print("a <  b : \(a <  b)")
print("a <= b : \(a <= b)")
print("**********")

// Mantık Operatörleri
print("a > b || x > y : \(a > b || x > y)") //OR
print("a > b && x > y : \(a > b && x > y)") // AND


// IF operatörü
var yas = 24
var isim = "Mehmet"

if yas >= 18 {
    print("Reşitsiniz")
}else {
    print("Reşit Değilsiniz")
}
print("**********")

if isim == "Hasan" {
    print("Merhaba Hasan")
}else if isim == "Mehmet" {
    print("Merhaba Mehmet")
}else {
    print("Tenınmayan kişi")
}
print("**********")

var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hoşgeldiniz")

}else {
    print("Hatalı Giriş")
}
print("**********")

 var sonuc = 10

if sonuc == 10 || sonuc == 20{
    print("Sonuç 10 veya 20")
}else {
    print("Sonuç 10 veya 20 değil")
}
print("**********")
var z = 10
var t = 20

z == t ? print("eşit") : print("eşit değil") // ternary koşul
print("**********")
// Switch

var gun = 8

switch gun {
    case 1: print("Pazartesi")
    case 2: print("Salı")
    case 3: print("Çarşamba")
    case 4: print("Perşembe")
    case 5: print("Cuma")
    case 6: print("Cumartesi")
    case 7: print("Pazar")
    default: print("Geçersiz Gün")
}
print("**********")

// Loops
//foreach yapısı
for i in 1...3 {
    print("Döngü 1 : \(i)")
}
//stride to dahil etmeyen
for k in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(k)")
}

for k in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3 : \(k)")
}

// while

var sayac = 1

while sayac < 4 {
    print("while döngüsü : \(sayac)")
    sayac += 1
}


for i in 1...5 {
    if i == 3{
        break
    }
    print("Döngü 5: \(i)")
}

for i in 1...5 {
    if i == 3{
        continue
    }
    print("Döngü 6 : \(i)")
}
