//
//  AddToDo.swift
//  ToDoApp
//
//  Created by Hasan Alay on 1.10.2023.
//

import UIKit

class AddToDo: UIViewController {

    @IBOutlet weak var tfTodo: UITextField!
    var viewModel = TodoAddViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func buttonSave(_ sender: Any) {
        if let todo = tfTodo.text{
            viewModel.kaydet(todo_content: todo)
        }
    }
}
