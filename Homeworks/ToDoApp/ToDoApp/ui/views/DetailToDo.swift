//
//  DetailToDo.swift
//  ToDoApp
//
//  Created by Hasan Alay on 1.10.2023.
//

import UIKit

class DetailToDo: UIViewController {

    @IBOutlet weak var tfTodo: UITextField!
    
    var todo:Todos?
    var viewModel = TodoDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let t = todo {
            tfTodo.text = t.todo_name
            
        }
    }
    @IBAction func buttonUpdate(_ sender: Any) {
        if let content = tfTodo.text, let t = todo {
            viewModel.guncelle(todo_id: t.todo_id!, todo_content: content)
        }
    }
    
}
