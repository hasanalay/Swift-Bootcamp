//
//  TodoDetailViewModel.swift
//  ToDoApp
//
//  Created by Hasan Alay on 3.10.2023.
//

import Foundation
class TodoDetailViewModel {
    var krepo = TodoDaoRepository()
    
    func guncelle (todo_id:Int, todo_content:String){
        krepo.guncelle(todo_id: todo_id, todo_content: todo_content)
    }
}
