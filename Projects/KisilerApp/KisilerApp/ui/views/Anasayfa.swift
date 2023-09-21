//
//  ViewController.swift
//  KisilerApp
//
//  Created by Hasan Alay on 21.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var kisilerTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Önemli kısım
        searchBar.delegate = self // Anasayfa > UISearchBarDelegate
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Hasan", kisi_tel: "123")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Özlem", kisi_tel: "1234")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Mehmet", kisi_tel: "12345")
        kisilerListesi.append(k1) //0.
        kisilerListesi.append(k2) //1.
        kisilerListesi.append(k3) //2.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("Anasyfaya dönüldü")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
                let gidileceVC = segue.destination as! KisiDetay
                gidileceVC.kisi = kisi
            }
        }
    }
}

extension Anasayfa : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi Ara : \(searchText)")
    }
}
extension Anasayfa : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count //3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // 0,1,2
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        
        let kisi = kisilerListesi[indexPath.row]
        hucre.labelKisiAd.text = kisi.kisi_ad
        hucre.labelKisiTel.text = kisi.kisi_tel
        
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){ contextualAction,view,bool in
            let kisi = self.kisilerListesi[indexPath.row]
            let alert = UIAlertController(title: "Silme işlemi", message: "\(kisi.kisi_ad!) silinsin mi", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                print("Kişi sil : \(kisi.kisi_id!)")
            }
            alert.addAction(evetAction)
            self.present(alert, animated :true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}

