//
//  TodoDaoRepository.swift
//  ToDoApp
//
//  Created by Hasan Alay on 3.10.2023.
//

import Foundation
import RxSwift

class TodoDaoRepository {
    var todoList = BehaviorSubject<[Todos]>(value: [Todos]())
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet (todo_content:String){
        print("Görev Ekle: \(todo_content)")
    }
    
    func guncelle(todo_id:Int, todo_content:String) {
        print("Görev Güncelle: \(todo_content) - \(todo_id)")
    }
    func ara(aramaKelimesi:String){
        print("Görev Ara : \(aramaKelimesi)")
    }
    func sil(todo_id:Int){
        print("Görev Sil : \(todo_id)")
    }
    func tamamla(todo_id:Int){
        print("Görev tamamlandı: \(todo_id)")
    }
    func todoYukle (){
        var list = [Todos]()
        todoList.onNext(list)
        
        db?.open()
        do{
            let rs = try db!.executeQuery("SELECT * FROM todos", values: nil)
            
            while rs.next() {
                let todo_id  = Int(rs.string(forColumn: "todo_id"))!
                let todo_name  = rs.string(forColumn: "todo_name")!
                
                let todo = Todos(todo_id: todo_id, todo_name: todo_name)
                list.append(todo)
            }
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    func veritabaniKopyala(){
            let bundleYolu = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
            let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: kopyalanacakYer.path){
                print("Veritabanı zaten var")
            }else{
                do{
                    try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                }catch{}
            }
    }
}
