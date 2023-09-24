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
    
    @IBAction func buttonComma(_ sender: Any) { // + işareti ile aynı şekilde kontrol edilmesi gerekiyor.
        if let text = textField.text {
            if text.count == 0 {
                return
            }
            if let lastCharacter = text.last, lastCharacter == "." {
                return
            }
        }
        textField.text = textField.text! + "."
    }
    
    @IBAction func buttonAns(_ sender: Any) {
        if let inputText = textField.text, !inputText.isEmpty {
            let components = inputText.components(separatedBy: "+")
            
            var totalDouble:Double = 0.0
            var totalInt:Int = 0
            // Her bir parçayı toplamaya ekleyelim
            for component in components {
                if inputText.contains(".") {
                    if let number = Double(component) {
                        totalDouble += number
                    }
                } else {
                    if let number = Int(component){
                        totalInt += number
                    }
                }
            }
            print("totalInt : \(totalInt) - totalDouble : \(totalDouble)")
            if totalInt != 0 {
                labelHistory.text = "\(inputText) = \(totalInt)"
            }else {
                labelHistory.text = "\(inputText) = \(totalDouble)"
            }
            // Sonucu etiketin metin özelliğine atayalım
            textField.text?.removeAll()
        }
        
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        if var text = textField.text, !text.isEmpty {
            text.removeAll()
            textField.text = text
        }
    }
    
    @IBAction func buttonDelete(_ sender: Any) {
        if var text = textField.text, !text.isEmpty {
            let lastIndex = text.index(before: text.endIndex)
            text.remove(at: lastIndex)
            textField.text = text
        }
    }
    
    @IBAction func buttonPlus(_ sender: Any) {

        if let text = textField.text {
            if text.count == 0{
                return
            }
            if let lastCharacter = text.last, lastCharacter == "+" {
                return
            }
        }
        textField.text = textField.text! + "+"
    }
}

