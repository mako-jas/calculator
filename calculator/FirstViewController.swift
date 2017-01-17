//
//  FirstViewController.swift
//  calculator
//
//  Created by 石井真子 on 2016/12/07.
//  Copyright © 2016年 石井真子. All rights reserved.
//


//課題：電卓アプリ作成
//電卓を使うシーン
//➡︎複数人でまとめての会計のときに、一人当たりの支払い金額を計算するとき
//➡︎➡︎飲み会（数時間）、ドライブ・BBQ(1日間)、旅行（数日間）
//金額の設定方法：割り勘、階段あり

//今回作成するアプリの目的
//＝「複数人で支払いを建て替えるようなイベントの際の、お金の計算の混乱を防止し、お金の計算にかける時間をなくす」
//解決する課題：1日単位の
//自分のエピソード：ドライブに行った際に、ガソリン代・車代・駐車代など総金額を１人で建て替えるのは金額的に高額で難しいため複数人が立て替えたら、最後に誰が誰にいくら払えばわからなくなった。細かい複数回の駐車場代を記憶しておらず、混乱した。
//利用後のイメージ：混乱防止のために都度財布を出してお金をやりとりをする無駄をなくす

//⬛︎仕様書
//first画面：金額入力画面
//１、画面上部に、支払い者を選択できるようにする。
//   支払い者の人数は、デフォルトで４人とする
//２、金額の入力フォームと、メモの記入欄を用意する。
//　　金額の入力フォームをタップすると、０〜９と＋ー×÷が表示されたキーボードが表示される。
//　　　キーボード内に、キーボードを閉じるボタンも用意する
//　　メモ欄では、⭐️文字の入力を可能にする
//３、２で入力した金額とメモを
//　　金額とメモは、１列で表示する。
//　　入力日時が新しい順に表示する。
//　　項目ごとのスライドによって削除を可能にする
//　　アプリがタスクキルされても、入力の内容は残るものとする
//４、DELETEボタン
//　　入力した金額とメモと計算結果を一括削除する
//　　削除する前に、ユーザに確認のダイアログを表示する
//５、支払い者の名前変更機能

//second画面：計算結果表示画面

//再計算ボタンを用意する

import UIKit

var history_list = [String]()

class FirstViewController: UIViewController , UITableViewDelegate {


    
    
//    
//    @IBAction func input_button(sender: AnyObject) {
//        history_list.append(textfield.text!)
//        textfield.text = ""
//        NSUserDefaults.standardUserDefaults().setObject(todolist, forKey: "list")
//        
//    }
//    
//    @IBOutlet weak var iii: UILabel!
//    @IBAction func additem(sender: AnyObject) {
//        todolist.append(textfield.text!)
//        textfield.text = ""
//        NSUserDefaults.standardUserDefaults().setObject(todolist, forKey: "list")
//    }




    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

