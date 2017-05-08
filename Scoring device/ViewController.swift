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
 if a<0
    {
    
    }
    func showAlert(){
        let alert = UIAlertView(title: "提示", message: "小心身后", delegate: self, cancelButtonTitle: "确定")
        alert.alertViewStyle = UIAlertViewStyle.default
        
        alert.show()
    }
    @IBAction func addA(_ sender: UIButton) {
        a=a+1
        displayA.text = "\(a)"
     
    }
    @IBAction func reduceA(_ sender: UIButton) {
        a=a-1
        displayA.text = "\(a)"
        
    }
    @IBAction func addB(_ sender: Any) {
        b=b+1
        displayB.text = "\(b)"
    }
    
    @IBAction func reduceB(_ sender: UIButton) {
        b=b-1
        displayB.text = "\(b)"

    }
  
    
    
  
    
    
    
    

}

