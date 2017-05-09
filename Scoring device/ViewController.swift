//
//  ViewController.swift
//  Scoring device
//
//  Created by singledog on 17/3/29.
//  Copyright © 2017年 singledog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var displayA: UITextField!
    @IBOutlet weak var displayB: UITextField!
    var a = 0
    var b = 0
    func showAlertWorry(){
        let alert = UIAlertView(title: "错误", message: "分数不可低于零", delegate: self, cancelButtonTitle: "Fuck")
        alert.alertViewStyle = UIAlertViewStyle.default
        
        alert.show()
    }
    func showAlertAWin(){
        let alert = UIAlertView(title: "恭喜", message: "a赢了", delegate: self, cancelButtonTitle: "重新开始")
        alert.alertViewStyle = UIAlertViewStyle.default
        
        alert.show()
        a=0
        displayA.text =  "\(a)"
    }
    func showAlertBWin(){
        let alert = UIAlertView(title: "恭喜", message: "b赢了", delegate: self, cancelButtonTitle: "重新开始")
        alert.alertViewStyle = UIAlertViewStyle.default
        
        alert.show()
        b=0
        displayB.text =  "\(b)"
    }
    
    @IBAction func addA(_ sender: UIButton) {
        a=a+1
        displayA.text = "\(a)"
        if a==8{
            showAlertAWin()
        }
     
    }
    @IBAction func reduceA(_ sender: UIButton) {
        a=a-1
        displayA.text = "\(a)"
        if a < 0 {
            
            showAlertWorry()
            a=0
            displayA.text =  "\(a)"
        }
        
    }
    @IBAction func addB(_ sender: Any) {
        b=b+1
        displayB.text =  "\(b)"
        if b == 8{
        showAlertBWin()
        }
    }
    
    @IBAction func reduceB(_ sender: UIButton) {
        b=b-1
        displayB.text = "\(b)"
        if b < 0 {
            showAlertWorry()
            b=0
            displayA.text =  "\(b)"
        }

    }
    
    @IBAction func begangame(_ sender: UIButton) {
        displayB.text="\(b)"
        displayA.text="\(a)"
    }
  
    
    
  
    
    
    
    

}

