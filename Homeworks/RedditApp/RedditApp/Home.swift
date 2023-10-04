//
//  ViewController.swift
//  RedditApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import UIKit

class Home: UIViewController {

    
    @IBOutlet weak var postsTableView: UITableView!
    
    @IBOutlet weak var navBarButtonProfile: UIBarButtonItem!
    @IBOutlet weak var navBarButtonHome: UIBarButtonItem!
    
    var postListesi = [Posts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navBarButtonHome.image = UIImage(named: "home")
        navBarButtonProfile.image = UIImage(named: "profile")
        let p1 = Posts(subProfile: "django2", subName: "r/wallpapers", postTimer: "2h", postContent: "Merhaba, bu duvar kağıdını nereden bulabilirim acaba? yardım ebebilir misiniz? :)", postContentImage: "contentPic", likes: "30", comments: "13")
        let p2 = Posts(subProfile: "apple", subName: "r/Macbook", postTimer: "1d", postContent: "Merhaba  2023 yılında hala 2021 model 16 inch macbook pro m1 pro alınır mı? ", postContentImage: "bilgisayar", likes: "150", comments: "40")
        let p3 = Posts(subProfile: "cats", subName: "r/cats", postTimer: "2h", postContent: "Merhaba arkadaşlar kedim Simba ile tanışın.", postContentImage: "cat", likes: "350", comments: "132")
        let p4 = Posts(subProfile: "django2", subName: "r/earthquake", postTimer: "1h", postContent: "İzmirde deprem oldu hisseden var mı?", postContentImage: "deprem", likes: "150", comments: "45")
        let p5 = Posts(subProfile: "lego 1", subName: "r/lego", postTimer: "45m", postContent: "Her yerde Ducati Lego arıyordum sonunda bulabilrdim. Bir hayırlı olsununuzu alırım.", postContentImage: "lego", likes: "340", comments: "54")
        let p6 = Posts(subProfile: "music", subName: "r/UIdesign", postTimer: "18h", postContent: "Böyle bir uygulamayı tasarlamanın maliyeti ne kadardır sizce?", postContentImage: "design", likes: "26", comments: "3")
        let p7 = Posts(subProfile: "historyprofile", subName: "r/history", postTimer: "56m", postContent: "Şöyle bir tarih videosu buldum herkese tevsiye ederim. Link yorumlarda.", postContentImage: "history", likes: "45", comments: "9")
        let p8 = Posts(subProfile: "f1Profile", subName: "r/formula1", postTimer: "6m", postContent: "Aston martin resmi hesabından Suzuka GP için özel posterini paylaştı", postContentImage: "f1", likes: "349", comments: "38")
        let p9 = Posts(subProfile: "finance", subName: "r/finance", postTimer: "5h", postContent: "Aman dikkat diyeyim döviz alırken ve bozdururken dikkatli olun yoksa böyle sahte para verirler :(", postContentImage: "money", likes: "549", comments: "68")
        let p10 = Posts(subProfile: "pianist", subName: "r/Movies", postTimer: "1d", postContent: "Keşke daha önce izleseydim dediğiniz bir filmi ekleyin ben başlıyorum.", postContentImage: "thepianist", likes: "149", comments: "58")
        postListesi.append(p1)
        postListesi.append(p2)
        postListesi.append(p3)
        postListesi.append(p4)
        postListesi.append(p5)
        postListesi.append(p6)
        postListesi.append(p7)
        postListesi.append(p8)
        postListesi.append(p9)
        postListesi.append(p10)
        
        
        postsTableView.delegate = self
        postsTableView.dataSource = self
        
        postsTableView.separatorColor = UIColor(named: "background")
        
        
    }
}

extension Home : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hucre = tableView.dequeueReusableCell(withIdentifier: "postHucre") as! PostHucre
        
        let post = postListesi[indexPath.row]
        hucre.imageViewSubProfile.image = UIImage(named: post.subProfile!)
        hucre.labelSubName.text = post.subName
        hucre.labelPostTime.text = post.postTimer
        hucre.labelContent.text = post.postContent
        hucre.imageViewContentPic.image = UIImage(named: post.postContentImage!)
        hucre.imageViewContentPic.contentMode = .scaleAspectFill
        hucre.imageViewContentPic.layer.cornerRadius = 15
        hucre.imageViewContentPic.clipsToBounds = true
        hucre.imageViewContentPic.layer.borderWidth = 0.5
        hucre.imageViewContentPic.layer.borderColor = UIColor.lightGray.cgColor
        hucre.labelLikes.text = post.likes
        hucre.labelComments.text = post.comments
        
        hucre.backgroundColor = UIColor(named: "background")
        hucre.arkaplan.layer.cornerRadius = 10
        hucre.selectionStyle = .none
        
        
        return hucre
    }
    
}
