//
//  ViewController.swift
//  RedditApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import UIKit

class Home: UIViewController {

    
    @IBOutlet weak var postsTableView: UITableView!
    
    
    var postListesi = [Posts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let p1 = Posts(subProfile: "django", subName: "django", postTimer: "2h", postContent: "metin gelecek yer burası", postContentImage: "bilgisayar", likes: 150, comments: 123)
        postListesi.append(p1)
        
    }


}

