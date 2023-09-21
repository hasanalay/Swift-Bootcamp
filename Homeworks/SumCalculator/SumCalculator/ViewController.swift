//
//  ViewController.swift
//  SumCalculator
//
//  Created by Hasan Alay on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelHistory: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonZero: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.text = ""
    }


    @IBAction func buttonZero(_ sender: Any) {
        if textField.text != "0" {
            textField.text = textField.text! + String("0")
        }
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        textField.text = textField.text! + String("1")
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        textField.text = textField.text! + String("2")
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        textField.text = textField.text! + String("3")
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        textField.text = textField.text! + String("4")
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        textField.text = textField.text! + String("5")
    }

    @IBAction func buttonSix(_ sender: Any) {
        textField.text = textField.text! + String("6")
    }
    
    @IBAction func buttonSeven(_ sender: Any) {
        textField.text = textField.text! + String("7")
    }
    
    @IBAction func buttonEight(_ sender: Any) {
        textField.text = textField.text! + String("8")
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        textField.text = textField.text! + String("9")
    }
    
    @IBAction func buttonAns(_ sender: Any) {
        //summing logic here
        
        if let numbers = textField.text {
            labelHistory.text = numbers
        }
        
    }
    
    @IBAction func buttonPlus(_ sender: Any) {

            if let text = textField.text {
                // Metnin son karakterini kontrol edin
                if let lastCharacter = text.last, lastCharacter == "+" {
                    // Eğer metnin son karakteri "+" ise işlemi gerçekleştirme
                    return
                }
            }
        // Metnin son karakteri "+" değilse işlemi gerçekleştir
        textField.text = textField.text! + "+"
    }
}

