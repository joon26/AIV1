//
//  ViewController.swift
//  AIV2
//
//  Created by D7703_28 on 2018. 4. 4..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var count: UILabel!
    var index = 1
    // 방향
    
    var di = true // true 증가 false는 감소
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.image = UIImage(named: "frame1.png")
        count.text = String(1)
    }

    @IBAction func bt(_ sender: Any) {
        myImageView.image = UIImage(named:"frame2.png")
        count.text = String(index)
        
        //1~5 5~1 방향확인
        if index == 1 {
            di = true
        }else if index == 5 {
            di = false
        }
        if di == true {
            index = index + 1
        }else {
            index = index - 1
        }
        
        
        
//        1~5반복
//        if index == 5 {
//            index = 1
//        }else{
//            index = index + 1
//        }
//
        myImageView.image = UIImage(named: "frame\(index).png")
        count.text = String(index)
    }
    


}

