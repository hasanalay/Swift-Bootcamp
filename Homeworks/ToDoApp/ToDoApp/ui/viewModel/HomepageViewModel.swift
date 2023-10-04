//
//  HomepageViewModel.swift
//  ToDoApp
//
//  Created by Hasan Alay on 3.10.2023.
//

import Foundation
import RxSwift

class HomepageViewModel {
    
    var krepo = TodoDaoRepository()
    var todoList = BehaviorSubject<[Todos]>(value: [Todos]())
    
    init (){
        krepo.veritabaniKopyala()
        todoList = krepo.todoList
    }
    func ara(aramaKelimesi:String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    func sil(todo_id:Int){
        krepo.sil(todo_id: todo_id)
        todoYukle()
    }
    func todoYukle (){
        krepo.todoYukle()

    }
    func tamamla(todo_id:Int){
        krepo.tamamla(todo_id: todo_id)
    }
}
