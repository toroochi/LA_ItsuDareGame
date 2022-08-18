//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 山尾かな on 2022/08/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokofeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsArray: [String] = ["一年前","一週間","昨日","今日"]
    let dokodeArray: [String] = ["教室で","友人の部屋で","部室で","帰り道で"]
    let daregaArray: [String] = ["堅物なあの子が","賢いあの子が","儚いあの子が","元気なあの子が"]
    let doshitaArray: [String] = ["くしゃみをした","泣いていた","笑みを浮かべた","ご機嫌だった"]
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func change(){
        itsuLabel.text = itsArray[index]
        dokofeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        if index == 3{
            index = 0
        }else{
            index = index + 1
        }
    }
    @IBAction func reset(){
        itsuLabel.text = "___"
        dokofeLabel.text = "___"
        daregaLabel.text = "___"
        doshitaLabel.text = "___"
    }
    @IBAction func random(){
        let itsIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        print("いつ: \(itsIndex)")
        print("どこで: \(dokodeIndex)")
        print("誰が: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
    }
}

