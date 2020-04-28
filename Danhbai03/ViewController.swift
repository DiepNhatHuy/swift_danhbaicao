//
//  ViewController.swift
//  Danhbai03
//
//  Created by Henry on 26/4/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var Labai1: UIImageView!
    @IBOutlet weak var Labai2: UIImageView!
    @IBOutlet weak var Labai3: UIImageView!
    @IBOutlet weak var Labai4: UIImageView!
    @IBOutlet weak var Labai5: UIImageView!
    @IBOutlet weak var Labai6: UIImageView!
    var bobai:[String]!
    var diembaicao:[Int]!
    var bobai_const:[String]!
    var diembaicao_const:[Int]!
    var sum_player1:Int=0
    var sum_player2:Int=0
    var solabai:Int=0
    var r_index:Int=0
    
    

    @IBAction func Rutbai(_ sender: Any) {
        solabai = bobai.count
        if (solabai == 0){
            viewDidLoad()
        }
        r_index = Int(arc4random())%solabai
        Labai1.image = UIImage(named: bobai[r_index])
        bobai.remove(at: r_index)
        sum_player1 = diembaicao[r_index] + sum_player1
        diembaicao.remove(at:r_index)
        //La 2
        solabai = bobai.count
        if (solabai == 0){
            viewDidLoad()
        }
        r_index = Int(arc4random())%solabai
        Labai2.image = UIImage(named: bobai[r_index])
        bobai.remove(at: r_index)
        sum_player1 = diembaicao[r_index] + sum_player1
        diembaicao.remove(at:r_index)
        //La 3
        solabai = bobai.count
        if (solabai == 0){
            viewDidLoad()
        }
        r_index = Int(arc4random())%solabai
        Labai3.image = UIImage(named: bobai[r_index])
        bobai.remove(at: r_index)
        sum_player1 = diembaicao[r_index] + sum_player1
        diembaicao.remove(at:r_index)
    }
    
    @IBAction func Rutbai2(_ sender: Any) {
        solabai = bobai.count
        if (solabai == 0){
            viewDidLoad()
        }
        r_index = Int(arc4random())%solabai
        Labai4.image = UIImage(named: bobai[r_index])
        bobai.remove(at: r_index)
        sum_player2 = diembaicao[r_index] + sum_player2
        diembaicao.remove(at:r_index)
        //La 5
        solabai = bobai.count
        if (solabai == 0){
            viewDidLoad()
        }
        r_index = Int(arc4random())%solabai
        Labai5.image = UIImage(named: bobai[r_index])
        bobai.remove(at: r_index)
        sum_player2 = diembaicao[r_index] + sum_player2
        diembaicao.remove(at:r_index)
        //La 6
        solabai = bobai.count
        if (solabai == 0){
            viewDidLoad()
        }
        r_index = Int(arc4random())%solabai
        Labai6.image = UIImage(named: bobai[r_index])
        bobai.remove(at: r_index)
        sum_player2 = diembaicao[r_index] + sum_player2
        diembaicao.remove(at:r_index)
    }

    
    @IBAction func Reset(_ sender: Any) {
        bobai = bobai_const
        diembaicao = diembaicao_const
        sum_player2=0
        sum_player1=0
        Labai1.image = UIImage(named: "matup.png")
        Labai2.image = UIImage(named: "matup.png")
        Labai3.image = UIImage(named: "matup.png")
        Labai4.image = UIImage(named: "matup.png")
        Labai5.image = UIImage(named: "matup.png")
        Labai6.image = UIImage(named: "matup.png")
        player1.text = "Player Cu Tí: "
        player2.text = "Player Cu Tèo: "
    }

    @IBAction func TinhDiem(_ sender: Any) {
        sum_player1 = sum_player1 % 10
        sum_player2 = sum_player2 % 10
        if (sum_player1 > sum_player2){
             player1.text = "Điểm Cu Tí: " + String(sum_player1) + " điểm, Cu Tí Thắng"
             player2.text = "Điểm Cu Tèo: " + String(sum_player2) + " điểm, Cu Tèo Thua"
        }
        else if (sum_player1 < sum_player2){
             player1.text = "Điểm Cu Tí: " + String(sum_player1) + " điểm, Cu Tí Thua"
             player2.text = "Điểm Cu Tèo: " + String(sum_player2) + " điểm, Cu Tèo Thắng"
        }
        else {
            player1.text = "Điểm Cu Tí: " + String(sum_player1) + " điểm, 2 Cu hoà"
            player2.text = "Điểm Cu Tèo: " + String(sum_player2) + " điểm, 2 Cu hoà"
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bobai_const = ["Ab.png","Ac.png","Ar.png","Aco.png","2b.png","2c.png","2r.png","2co.png","3b.png","3c.png","3r.png","3co.png","4b.png","4c.png","4r.png","4co.png","Jb.png","Jc.png","Jr.png","Jco.png","Qb.png","Qc.png","Qr.png","Qco.png","Kb.png","Kc.png","Kr.png","Kco.png"]
        
        diembaicao_const = [1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,10,10,10,10,10,10,10,10,10,10,10,10]
        
        bobai = bobai_const
        diembaicao = diembaicao_const
        solabai = bobai.count
    }
}

