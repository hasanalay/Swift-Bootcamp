//
//  ViewController.swift
//  DateAndTimePicker
//
//  Created by Hasan Alay on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTarih: UITextField!
    
    @IBOutlet weak var tfSaat: UITextField!
    
    var timePicker:UIDatePicker?
    var datePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfTarih.inputView = datePicker
        // tekerlek şeklindeki tarih ve saat seçici kullanmak için gerekli kısım
        if #available(iOS 13.4, *) {
            timePicker?.preferredDatePickerStyle = .wheels
            datePicker?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetod))
        
        view.addGestureRecognizer(dokunmaAlgilama)
        
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
    }
    
    @objc func dokunmaAlgilamaMetod() { //objc olmazsa yukarıda selector olarak kullanamyız.
        print("Ekrana dokunuldu!")
        view.endEditing(true)
    }
    
    @objc func saatGoster (uiDatePicker:UIDatePicker){
        let format = DateFormatter()
        format.dateFormat = "hh:mm"
        let alinanSaat = format.string(from: uiDatePicker.date)
        tfSaat.text = alinanSaat
    }
    
    @objc func tarihGoster (uiDatePicker:UIDatePicker){
        let format = DateFormatter()
        format.dateFormat = "dd.MM.yyyy"
        let alinanTarih = format.string(from: uiDatePicker.date)
        tfTarih.text = alinanTarih
    }
}

