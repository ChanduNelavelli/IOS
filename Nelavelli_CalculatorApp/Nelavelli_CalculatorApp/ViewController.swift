//
//  ViewController.swift
//  Nelavelli_CalculatorApp
//
//  Created by Nelavelli,Chandu on 2/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultOutlet: UILabel!
    var number1:Double = -9.99
       var number2:Double = -9.99
       var op: String = " "
    
    @IBAction func buttonAC(_ sender: UIButton) {
        resultOutlet.text = ""
               number1 = -9.99
               number2 = -9.99
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        var interim = resultOutlet.text!
               if(!interim.isEmpty){
                   interim.removeLast()}
               if(interim.isEmpty){
                   number1 = -9.99
                   number2 = -9.99
               }
               resultOutlet.text = interim
    }

    @IBAction func buttonAddSub(_ sender: UIButton) {
        if op == "-"{
                   op = "+"
               }
               else if op == "+"{
                   op = "-"
               }
           }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        number1 = Double(resultOutlet.text!) ?? 0.0
               resultOutlet.text = resultOutlet.text!+"÷"
               op = "÷"
               resultOutlet.text = ""
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        number1 = Double(resultOutlet.text!) ?? 0.0
               resultOutlet.text = "X"
               op = "X"
               resultOutlet.text = ""
    }
    
    @IBAction func buttonSub(_ sender: UIButton) {
        number1 = Double(resultOutlet.text!) ?? 0.0
               resultOutlet.text = "-"
               op = "-"
               resultOutlet.text = ""
    }
    
    @IBAction func buttonAdd(_ sender: UIButton) {
        number1 = Double(resultOutlet.text!) ?? 0.0
               resultOutlet.text = "+"
               op = "+"
               resultOutlet.text = ""
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        number2 = Double(resultOutlet.text!) ?? 0.0
       
               if op.contains("+"){
                   let result = number1+number2
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text = "\(Int(result))"
                   }
                   else {resultOutlet.text = "\(result)"}
               }
               else if op.contains("-"){
                   var result = number1-number2
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text = "\(Int(result))"
                   }
                   else{resultOutlet.text = "\(result)"}
               }
               if op.contains("X"){
                   var result = number1*number2
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text = "\(Int(result))"
                   }
                   else {resultOutlet.text = "\(result)"}
               }
               if op.contains("÷"){
                   var result = number1/number2
                   if(number2 == 0){
                       resultOutlet.text = "Not a Number"
                   }
                   else if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text = "\(Int(result))"
                   }
                   else {resultOutlet.text = "\(round(result * 100000) / 100000.0)"}
               }
               if op.contains("%"){
                   var result = number1.truncatingRemainder(dividingBy : number2)
                   if(result.truncatingRemainder(dividingBy: 1)==0){
                       resultOutlet.text = "\(Int(result))"
                   }
                   else {resultOutlet.text = "\(round(result * 100000) / 100000.0)"}
               }
    }
    
    @IBAction func buttonMod(_ sender: UIButton) {
        op = "%"
        number1 = Double(resultOutlet.text!)!
        resultOutlet.text = ""
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "."
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "0"
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "1"
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "6"
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultOutlet.text = ""
        // Do any additional setup after loading the view.
    }
}
