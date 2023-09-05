import UIKit

// Optional - nullable - Null Safety
//nil

var str = "Hello"
// mesaj bundan sonraki satırlarda nil olabilir ona göre kontrol edilmeli
// var mesaj:String? = nil
var mesaj:String?

mesaj = "Merhaba"

if mesaj != nil {
    print(mesaj!) // sonuna ! koymak: unwrap (optional ifadesini sildi)
}else {
    print("mesaj nil")
}

// Optional binding
//let temp = mesaj // eğer nil ise false, nil değilse true olur

if let temp = mesaj {
    print(temp) // bu yapıda otomatik olarak unwrap oluyor
}else{
    print("mesaj nil")
}

print("*******")
if var temp = mesaj {
    print(temp) // bu yapıda otomatik olarak unwrap oluyor
    temp = "nasılsın"
    print(temp)
}else{
    print("mesaj nil")
}
