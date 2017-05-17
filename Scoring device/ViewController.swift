//
//  ViewController.swift
//  Scoring device
//
//  Created by singledog on 17/3/29.
//  Copyright © 2017年 singledog. All rights reserved.
//

import UIKit
var flagA : Int=0
var flagB : Int=0
var dlg : Int = 0
class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

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
    @IBOutlet weak var displayFA: UITextField!
    @IBOutlet weak var displayFB: UITextField!
    @IBOutlet weak var phA: UIImageView!
    @IBOutlet weak var phB: UIImageView!
    @IBAction func UPloadA(_ sender: UIButton)
    {
        if dlg==0
        {
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
            {
                let picker = UIImagePickerController()
                picker.delegate = self
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                self.present(picker, animated: true, completion: {() -> Void in})
            }
            else
            {
                print("读取相册错误")
            }
        }

    }
 
    @IBAction func UploadB(_ sender: UIButton)
    {
        if dlg==0{
            flagB=1
            flagA=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let picker = UIImagePickerController()
                picker.delegate = self
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        }
        
    }
  
    
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        //查看info对象
        print(info)
        //显示的图片
        let image:UIImage!
        //获取选择的原图
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        if(flagA==1){phA.image = image}
        else if(flagB==1){phB.image = image}
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    var a = 0
    var b = 0
    var FinalA = 0
    var FinalB = 0
    let AWin = "甲赢得了比赛"
    let BWin = "乙赢得了比赛"
       func Reflash(){
        a = 0
        b = 0
        FinalA = 0
        FinalB = 0
        displayB.text="\(b)"
        displayA.text="\(a)"
        displayFA.text="\(FinalA)"
        displayFB.text="\(FinalB)"
    }
        
    func JudgeWhoWin (){
        if FinalA==2
        {
            displayFA.text = AWin
            FinalWinner()
        }
        if FinalB==2
        {
            displayFB.text = BWin
            FinalWinner()
        }

    }
    func FinalWinner(){
        let alert = UIAlertView(title: "三局俩胜", message: "一方胜出", delegate: self, cancelButtonTitle: "再来一句")
        alert.alertViewStyle = UIAlertViewStyle.default
        alert.show()
        
        Reflash()
        
    }
    func showAlertWorry(){
        let alert = UIAlertView(title: "错误", message: "分数不可低于零", delegate: self, cancelButtonTitle: "Fuck")
        alert.alertViewStyle = UIAlertViewStyle.default
        alert.show()
    }
    func showAlertAWin(){
        let alert = UIAlertView(title: "恭喜", message: "此场甲赢", delegate: self, cancelButtonTitle: "继续比赛")
        alert.alertViewStyle = UIAlertViewStyle.default
        
        alert.show()
        a=0
        displayA.text =  "\(a)"
        b=0
        displayB.text =  "\(b)"
        FinalA = FinalA + 1
        displayFA.text = "\(FinalA)"
        JudgeWhoWin ()
    }
    func showAlertBWin(){
        let alert = UIAlertView(title: "恭喜", message: "此场乙赢", delegate: self, cancelButtonTitle: "继续比赛")
        alert.alertViewStyle = UIAlertViewStyle.default
        
        alert.show()
        a=0
        displayA.text =  "\(a)"
        b=0
        displayB.text =  "\(b)"
        FinalB = FinalB + 1
        displayFB.text = "\(FinalB)"
        JudgeWhoWin ()
    }
    
    @IBAction func addA(_ sender: UIButton) {
        a=a+1
        displayA.text = "\(a)"
        if a==8 && FinalA<2{
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
        if b == 8 && FinalB<2{
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
        a = 0
        b = 0
        FinalA = 0
        FinalB = 0
        displayB.text="\(b)"
        displayA.text="\(a)"
        displayFA.text="\(FinalA)"
        displayFB.text="\(FinalB)"
        
    }
  
    
}

       
