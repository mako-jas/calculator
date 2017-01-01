//
//  SecondViewController.swift
//  calculator
//
//  Created by 石井真子 on 2016/12/07.
//  Copyright © 2016年 石井真子. All rights reserved.
//

import UIKit

var input_money




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

//slackと連携できたかテスト
//画面を２画面にせず、スクロールにしたくなってきた。
//やりたいことは明確だけど、プログラミングで行き詰まる。


//キーボードの中身
//全クリア,%,１文字削除,÷
//7,8,9,×
//4,5,6,-
//1,2,3,+
//.,0,00,=


class SecondViewController: UIViewController {

    
    @IBOutlet weak var money_field: UITextField!
    
    
    @IBOutlet weak var memo_field: UITextField!
    
    @IBAction func button_0(sender: AnyObject) {
    }
    

    @IBAction func button_1(sender: AnyObject) {
    }
    
    @IBAction func button_2(sender: AnyObject) {
    }
    
    
    @IBAction func button_3(sender: AnyObject) {
    }
    
    
    
    @IBAction func button_p(sender: AnyObject) {
    }
    
    
    @IBAction func button_e(sender: AnyObject) {
    }
    
    
    //ボタンが入力されたら、money_fieldに数字と希望を表示する
    
    
    
    
    //=が入力されるまでのmoney_fieldを、計算対象とする。
    //＝が入力されてから計算開始
    //
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

