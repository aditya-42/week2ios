//
//  ViewController.swift
//  Week2Project
//
//  Created by Aditya Sanjeev Purohit on 2024-09-13.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    
    @IBOutlet weak var num1text: UITextField!
    @IBOutlet weak var num2text: UITextField!
    @IBOutlet weak var remainderText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        remainderText.isHidden = true
        // Do any additional setup after loading the view.
    }


    @IBAction func addOne(_ sender: Any) {
        counter+=1
        counterLabel.text = "\(counter)"
    }
    
    @IBAction func subOne(_ sender: Any) {
        counter-=1
        counterLabel.text = "\(counter)"
    }
    
    @IBAction func operationHandler(_ sender: UIButton) {
        
        if let num1 = num1text.text , let num2 = num2text.text {
                 if !num1.isEmpty , !num2.isEmpty {
                     // the two texts are not null
                     // the two texts are not empty
                     var result = 0
                     
                     if sender.titleLabel?.text == "+" {

                          result = Int(num1)! + Int(num2)!
                     }
                     else if sender.titleLabel?.text == "-" {
                         result = Int(num1)! - Int(num2)!
                     }
                     
                     else if sender.titleLabel?.text == "*" {
                         result = Int(num1)! * Int(num2)!
                     }
                     
                     else if sender.titleLabel?.text == "/" {
                         result = Int(num1)! / Int(num2)!
                         var remainder = Int(num1)! % Int(num2)!
                         
                         if remainder != 0{
                             remainderText.text = "Remainder is \(remainder)"
                             remainderText.isHidden = false
                         }
                         else{
                             remainderText.isHidden = true
                         }
                     }
    
                     else if sender.titleLabel?.text == "mod" {
                         result = Int(num1)! % Int(num2)!
                     }
                     
                     else if sender.titleLabel?.text == "C" {
                         result = 0
                     }
                     
                     counterLabel.text = "\(result)"
                 }
                 
                 
             }
             

        
    }
}

