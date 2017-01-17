//
//  SecondViewController.swift
//  calculator
//
//  Created by 石井真子 on 2016/12/07.
//  Copyright © 2016年 石井真子. All rights reserved.
//

import UIKit


@IBDesignable

class Button_Custom: UIButton {
    
    @IBInspectable var textColor: UIColor?
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
}

//画面を２画面にせず、スクロールにしたくなってきた。


//var input_money:[String] = []
var input_money:String = ""
var input_money_field:String = ""
var kazu1:Double = 0
var kazu2:Double = 0
var mark:Int = 0



class SecondViewController: UIViewController {

    
    @IBOutlet weak var money_field: UITextField!
    
    
    @IBOutlet weak var memo_field: UITextField!
    
    
    @IBAction func all_delete(sender: AnyObject) {
        input_money_field = ""
        money_field.text = input_money_field
        
    }
    
    
    @IBAction func word_delete(sender: AnyObject) {
        //まだ場合分けを未確認。表示部分のみ記載
        if(input_money_field != ""){
            input_money_field = input_money_field[input_money_field.startIndex..<input_money_field.endIndex.advancedBy(-1)]
            money_field.text = input_money_field
        }
    }
    
    
    
    @IBAction func button_num(sender: AnyObject) {
        //０〜９の数字の入力
        var number:String = String(sender.tag)
//        print("\(sender.tag)は、sender.tag\n")
//        print("\(number)は、number\n")
        input_money += number//入力したStringを格納
        input_money_field += number
        print("\(input_money)は、input_money\n")
        print("\(input_money_field)は、input_money_field\n")
        money_field.text = input_money_field//入力した数字を表示
    }
    
    
    
    
    
    @IBAction func button_4calc(sender: AnyObject) {
        var sum:Double = 0
        var markStr:String = ""
        if(sender.tag == 11){
            markStr = "+"
            //共通化させたい（ここから）＊１
            if(kazu1 == 0 && kazu2 == 0 && input_money != ""){
                kazu1 = transfer(input_money)
                input_money_field += markStr
            }else if(kazu1 != 0 && kazu2 == 0){
                
                if(input_money == ""){//「＋」を押した後に続けて「×」を押した時の場合分け処理
                    input_money_field = input_money_field[input_money_field.startIndex..<input_money_field.endIndex.advancedBy(-1)]
                    input_money_field += markStr
                }else{
                    kazu2 = transfer(input_money)
                    sum = four_calc(mark, kaz1: kazu1, kaz2: kazu2)
                    kazu1 = sum
                    kazu2 = 0
                    input_money_field = String(kazu1) + markStr
                }
            }
            input_money = ""
            money_field.text = input_money_field
            mark = sender.tag
            //共通化させたい（ここまで）＊１
        }else if(sender.tag == 22){
            markStr = "-"
            //共通化させたい（ここから）＊１
            if(kazu1 == 0 && kazu2 == 0 && input_money != ""){
                kazu1 = transfer(input_money)
                input_money_field += markStr
            }else if(kazu1 != 0 && kazu2 == 0){
                
                if(input_money == ""){//「＋」を押した後に続けて「×」を押した時の場合分け処理
                    input_money_field = input_money_field[input_money_field.startIndex..<input_money_field.endIndex.advancedBy(-1)]
                    input_money_field += markStr
                }else{
                    kazu2 = transfer(input_money)
                    sum = four_calc(mark, kaz1: kazu1, kaz2: kazu2)
                    kazu1 = sum
                    kazu2 = 0
                    input_money_field = String(kazu1) + markStr
                }
            }
            input_money = ""
            money_field.text = input_money_field
            mark = sender.tag
            //共通化させたい（ここまで）＊１
            
        }else if(sender.tag == 33){
            markStr = "×"
            //共通化させたい（ここから）＊１
            if(kazu1 == 0 && kazu2 == 0 && input_money != ""){
                kazu1 = transfer(input_money)
                input_money_field += markStr
            }else if(kazu1 != 0 && kazu2 == 0){
                
                if(input_money == ""){//「＋」を押した後に続けて「×」を押した時の場合分け処理
                    input_money_field = input_money_field[input_money_field.startIndex..<input_money_field.endIndex.advancedBy(-2)]
                    input_money_field += markStr
                }else{
                    kazu2 = transfer(input_money)
                    sum = four_calc(mark, kaz1: kazu1, kaz2: kazu2)
                    kazu1 = sum
                    kazu2 = 0
                    input_money_field = String(kazu1) + markStr
                }
            }
            input_money = ""
            money_field.text = input_money_field
            mark = sender.tag
            //共通化させたい（ここまで）＊１
            
        }else if(sender.tag == 44){
            markStr = "÷"
            //共通化させたい（ここから）＊１
            if(kazu1 == 0 && kazu2 == 0 && input_money != ""){
                kazu1 = transfer(input_money)
                input_money_field += markStr
            }else if(kazu1 != 0 && kazu2 == 0){
                
                if(input_money == ""){//「＋」を押した後に続けて「×」を押した時の場合分け処理
                    input_money_field = input_money_field[input_money_field.startIndex..<input_money_field.endIndex.advancedBy(-1)]
                    input_money_field += markStr
                }else{
                    kazu2 = transfer(input_money)
                    sum = four_calc(mark, kaz1: kazu1, kaz2: kazu2)
                    kazu1 = sum
                    kazu2 = 0
                    input_money_field = String(kazu1) + markStr
                }
            }
            input_money = ""
            money_field.text = input_money_field
            mark = sender.tag
            //共通化させたい（ここまで）＊１
        }else{//「＝」を押した時の処理
            if(kazu1 == 0 && kazu2 == 0 && input_money != ""){//数字を入力しただけで「＝」を押した時：挙動何もなし
            }else if(kazu1 != 0 && kazu2 == 0){
                
                if(input_money == ""){//「＋」を押した後に続けて「＝」を押した時の場合分け処理
                    input_money_field = input_money_field[input_money_field.startIndex..<input_money_field.endIndex.advancedBy(-1)]
                }else{//２つ目の数字を入力した後「＝」を押した時の場合分け処理
                    kazu2 = transfer(input_money)
                    sum = four_calc(mark, kaz1: kazu1, kaz2: kazu2)
                    kazu1 = sum
                    kazu2 = 0
                    input_money_field = String(kazu1)
                }
            }
            input_money = ""
            money_field.text = input_money_field
            //共通化させたい（ここまで）＊１
            
        }
            
    }
    
    

    
    
    //ボタンが入力されたら、money_fieldに数字と記号を表示する
    
    
    
    
    //=が入力されるまでのmoney_fieldを、計算対象とする。
    //＝が入力されてから計算開始
    //
    
    
    //Stringの3をDoubleの3へ変換
    func trans(text:String) -> Double {
        switch text {
        case "1":
            return 1
        case "2":
            return 2
        case "3":
            return 3
        case "4":
            return 4
        case "5":
            return 5
        case "6":
            return 6
        case "7":
            return 7
        case "8":
            return 8
        case "9":
            return 9
        case "0":
            return 0
        default:
            return 1
        }
    }
    
    //べき乗の関数定義　2の３乗＝２＊２＊２
    func pow(number: Int, power: Int) -> Double {
        var result = number
        for _ in 1..<power{
            print(power)
            result = result * number
            print(result)
        }
        return Double(result)
    }
    
    
    //Stringの3819をDoubleの3819へ変換
    func transfer(text:String) -> Double {
        var sum : Double = 0
        var kazu : Double
        var moji_count : Int = text.characters.count
        let moji = text.characters.map { String($0) }
        print("\(moji)")
        moji_count -= 1
        
        for m in moji {
            kazu = trans(m)
            if (moji_count != 0){
                sum = sum + kazu * pow(10, power: moji_count)
            }else{
                sum = sum + kazu
            }
            moji_count = moji_count - 1
        }
        return sum
    }
    
    //四則計算
    func four_calc(mark:Int, kaz1:Double, kaz2:Double) -> Double {
        switch mark {
        case 11:
            return kaz1 + kaz2
        case 22:
            return kaz1 - kaz2
        case 33:
            return kaz1 * kaz2
        case 44:
            return kaz1 / kaz2
        default:
            return 99999
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        money_field.text = ""

        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

