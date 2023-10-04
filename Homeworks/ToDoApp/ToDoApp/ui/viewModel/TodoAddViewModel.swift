//
//  TodoAddViewModel.swift
//  ToDoApp
//
//  Created by Hasan Alay on 3.10.2023.
//

import Foundation
class TodoAddViewModel {
    var krepo = TodoDaoRepository()
    
    func kaydet (todo_content:String){
        krepo.kaydet(todo_content: todo_content)
    }
}
