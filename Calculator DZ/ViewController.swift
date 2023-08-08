//
//  ViewController.swift
//  Calculator DZ
//
//  Created by Kymbat Sharmukhan on 08.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pluseButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var pluseMinusButton: UIButton!
    
    @IBOutlet weak var multyplayButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var procentButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!

    
    
    @IBOutlet weak var textFieldFirst: UITextField!
    
    @IBOutlet weak var textFieldSecond: UITextField!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pluseButton.layer.cornerRadius = 10
        minusButton.layer.cornerRadius = 10
        pluseMinusButton.layer.cornerRadius = 10
        multyplayButton.layer.cornerRadius = 10
        divideButton.layer.cornerRadius = 10
        procentButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        TotalLabel.layer.masksToBounds = true
        TotalLabel.layer.cornerRadius = 10
        
    }
    
    @IBAction func pluse(_ sender: Any) {
        let a = textFieldFirst.text!
        let b = textFieldSecond.text!
        let sum = (Double(a) ?? 0) + (Double(b) ?? 0)
        
        var summa = String(sum)
        
        if summa.hasSuffix(".0") {
            summa.removeLast(2)
        }
        
        TotalLabel.text = String(summa)
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textFieldFirst.text!
        let b = textFieldSecond.text!
        let minus = (Double(a) ?? 0) - (Double(b) ?? 0)
        
        var min = String(minus)
        
        if min.hasSuffix(".0") {
            min.removeLast(2)
        }
            TotalLabel.text = String(min)
    }
        @IBAction func pluseMinus(_ sender: Any) {
            let a = TotalLabel.text!
            let pluseMinus = (Double(a) ?? 0) * (-1)
            var plm = String(pluseMinus)
            
            if plm.hasSuffix(".0") {
                plm.removeLast(2)
            }
            
            TotalLabel.text = String(plm)
        }
        
        @IBAction func multyplay(_ sender: Any) {
            let a = textFieldFirst.text!
            let b = textFieldSecond.text!
            let multyplay = (Double(a) ?? 0) * (Double(b) ?? 0)
            var multy = String(multyplay)
            
            if multy.hasSuffix(".0") {
                multy.removeLast(2)
            }
            
            TotalLabel.text = String(multy)
        }
        
        @IBAction func divide(_ sender: Any) {
            let a = textFieldFirst.text!
            let b = textFieldSecond.text!
            let divide = (Double(a) ?? 0) / (Double(b) ?? 0)
            var div = String(divide)
            
            if div.hasSuffix(".0") {
                div.removeLast(2)
            }
            
            TotalLabel.text = String(div)
            
        }
        
        @IBAction func procent(_ sender: Any) {
            let a = textFieldFirst.text!
            let b = textFieldSecond.text!
            let procent = (Double(b) ?? 0) * 100 / (Double(a) ?? 0)
            var str = String(procent)
            
            if str.hasSuffix(".0") {
                str.removeLast(2)
            }
            TotalLabel.text = String(str)
        }
        @IBAction func clear(_ sender: Any) {
            textFieldFirst.text = ""
            textFieldSecond.text = ""
            TotalLabel.text = ""
            
        }
}
