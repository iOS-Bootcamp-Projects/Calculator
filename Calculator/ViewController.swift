//
//  ViewController.swift
//  Calculator
//
//  Created by Aamer Essa on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var ratioBtn: UIButton!
    @IBOutlet weak var subBtn: UIButton!
    @IBOutlet weak var resualtBtn: UIButton!
    @IBOutlet weak var multiBtn: UIButton!
    @IBOutlet weak var divisionBtn: UIButton!
    @IBOutlet weak var sumBtn: UIButton!
    @IBOutlet weak var BtnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var BtnThree: UIButton!
    @IBOutlet weak var BtnFour: UIButton!
    @IBOutlet weak var BtnFive: UIButton!
    @IBOutlet weak var BtnSix: UIButton!
    @IBOutlet weak var BtnSeven: UIButton!
    @IBOutlet weak var BtnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    @IBOutlet weak var BtnZero: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    @IBOutlet weak var pointBtn: UIButton!
    @IBOutlet weak var resualtLabel: UILabel!
    var opration = ""
    var valueOne = 0.0
    var valueTwo = 0.0
    var resualt = 0.0
    var isMinus = false
    override func viewDidLoad() {
        super.viewDidLoad()
        resualtLabel.text = ""

        BtnOne.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnOne.layer.masksToBounds = true
        btnTwo.layer.cornerRadius = btnTwo.frame.width / 2.8
        btnTwo.layer.masksToBounds = true
        BtnThree.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnThree.layer.masksToBounds = true
        BtnFour.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnFour.layer.masksToBounds = true
        BtnFive.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnFive.layer.masksToBounds = true
        BtnSix.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnSix.layer.masksToBounds = true
        BtnSeven.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnSeven.layer.masksToBounds = true
        BtnEight.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnEight.layer.masksToBounds = true
        btnNine.layer.cornerRadius = btnTwo.frame.width / 2.8
        btnNine.layer.masksToBounds = true
        sumBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        sumBtn.layer.masksToBounds = true
        BtnZero.layer.cornerRadius = btnTwo.frame.width / 2.8
        BtnZero.layer.masksToBounds = true
        pointBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        pointBtn.layer.masksToBounds = true
        clearBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        clearBtn.layer.masksToBounds = true
        divisionBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        divisionBtn.layer.masksToBounds = true
        multiBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        multiBtn.layer.masksToBounds = true
        subBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        subBtn.layer.masksToBounds = true
        ratioBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        ratioBtn.layer.masksToBounds = true
        minusBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        minusBtn.layer.masksToBounds = true
        resualtBtn.layer.cornerRadius = btnTwo.frame.width / 2.8
        resualtBtn.layer.masksToBounds = true
        
        
        
    }
    
    
    
    
    
    
    @IBAction func onClickPointBtn(_ sender: Any) {
        resualtLabel.text = "\(resualtLabel.text!)."
    }
    
    
    @IBAction func onClickBtnNubers(_ sender: UIButton) {
        resualtLabel.text = "\(resualtLabel.text!)\(sender.tag)"
    }
    
    
    @IBAction func resualt(_ sender: Any) {
        
        valueTwo = Double(resualtLabel.text!) ?? 0.0
        
        resualtLabel.text = String(resualt)
    }
    
    @IBAction func onClickClearBtn(_ sender: Any) {
        resualtLabel.text = ""
    }
    
    @IBAction func claculate(_ sender: UIButton) {
               
        valueTwo = Double(resualtLabel.text!) ?? 0.00
        
        if sender.currentTitle == "+" {
            sender.layer.backgroundColor = UIColor.white.cgColor
            valueOne = Double(resualtLabel.text!) ?? 0.00
            resualtLabel.text = ""
            opration = "+"
            sumBtn.isEnabled = false
            subBtn.isEnabled = false
            divisionBtn.isEnabled = false
            multiBtn.isEnabled = false
        }
        
        if sender.currentTitle == "-" {
            sender.layer.backgroundColor = UIColor.white.cgColor
            valueOne = Double(resualtLabel.text!) ?? 0.00
            resualtLabel.text = ""
            opration = "-"
            sumBtn.isEnabled = false
            subBtn.isEnabled = false
            divisionBtn.isEnabled = false
            multiBtn.isEnabled = false
        }
        
        if sender.currentTitle == "X" {
            sender.layer.backgroundColor = UIColor.white.cgColor
            valueOne = Double(resualtLabel.text!) ?? 0.00
            resualtLabel.text = ""
            opration = "X"
            sumBtn.isEnabled = false
            subBtn.isEnabled = false
            divisionBtn.isEnabled = false
            multiBtn.isEnabled = false
        }
        
        if sender.currentTitle == "÷" {
            sender.layer.backgroundColor = UIColor.white.cgColor
            valueOne = Double(resualtLabel.text!) ?? 0.00
            resualtLabel.text = ""
            opration = "÷"
            sumBtn.isEnabled = false
            subBtn.isEnabled = false
            divisionBtn.isEnabled = false
            multiBtn.isEnabled = false
        }
        
        
        if sender.currentTitle == "="{
            
            if opration == "+" {
                sumBtn.layer.backgroundColor = UIColor.systemOrange.cgColor
                resualt = valueOne + valueTwo
            }
            
            
            if opration == "-"{
                subBtn.layer.backgroundColor = UIColor.systemOrange.cgColor
                resualt = valueOne - valueTwo
            }
            
            if opration == "X"{
                multiBtn.layer.backgroundColor = UIColor.systemOrange.cgColor
                resualt = valueOne * valueTwo
            }
            
            if opration == "÷"{
                divisionBtn.layer.backgroundColor = UIColor.systemOrange.cgColor
                resualt = valueOne / valueTwo
            }
            
            resualtLabel.text = String(resualt)
            sumBtn.isEnabled = true
            subBtn.isEnabled = true
            divisionBtn.isEnabled = true
            multiBtn.isEnabled = true
        }
    } // end of claculate()
    
    
    @IBAction func claculateRatio(_ sender: Any) {
        valueOne = Double(resualtLabel.text!) ?? 0.00
        let result = valueOne / 100
        resualtLabel.text = String(result)
    } //claculateRatio()
    
    
    @IBAction func onClickMinusBtn(_ sender: Any) {
        
        if !isMinus {
            resualtLabel.text = "-\(resualtLabel.text!)"
            isMinus = true
        }
        else{
            var resualt = Array(resualtLabel.text!)
            resualt.removeFirst()
            resualtLabel.text = String(resualt)
            isMinus = false 
        }
            
    } // onClickMinusBtn()
}

