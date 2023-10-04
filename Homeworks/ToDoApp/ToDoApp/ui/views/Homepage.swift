//
//  ViewController.swift
//  ToDoApp
//
//  Created by Hasan Alay on 1.10.2023.
//

import UIKit
import RxSwift

class Homepage: UIViewController {

    @IBOutlet weak var labelGreet: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var todoTableView: UITableView!
    
    var todoList = [Todos]()
    var viewModel = HomepageViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self

        
        todoTableView.delegate = self
        todoTableView.dataSource = self

        _ = viewModel.todoList.subscribe(onNext: {liste in
            self.todoList = liste
            self.todoTableView.reloadData()
        })
        
        labelGreet.text = "Bugün seni bekleyen \(todoList.count) adet görevin ver"
        todoTableView.separatorColor = UIColor.systemBackground
        
        todoTableView.layer.cornerRadius = 10
        
    }
    override func viewWillAppear(_ animated: Bool) {
        viewModel.todoYukle()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let todo = sender as? Todos {
                let gidileceVC = segue.destination as! DetailToDo
                gidileceVC.todo = todo

            }
        }
    }
    


}
extension Homepage : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.ara(aramaKelimesi: searchText)
    }
}

extension Homepage: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let hucre = tableView.dequeueReusableCell(withIdentifier: "todoHucre") as! TodoHucre
            let todo = todoList[indexPath.row]
            
            
            hucre.labelTodoContent.text = todo.todo_name
            hucre.arkaplan.backgroundColor = UIColor(named: "done")
            hucre.arkaplan.layer.cornerRadius = 10
            hucre.selectionStyle = .none
            return hucre
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = todoList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: todo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){ contextualAction,view,bool in
            let todo = self.todoList[indexPath.row]
            let alert = UIAlertController(title: "Silme işlemi", message: "Görev silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                self.viewModel.sil(todo_id: todo.todo_id!)
            }
            alert.addAction(evetAction)
            self.present(alert, animated :true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}
