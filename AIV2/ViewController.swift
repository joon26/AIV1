//
//  ViewController.swift
//  AIV2
//
//  Created by D7703_28 on 2018. 4. 4..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //이미지의 인덱스
    var counter = 1
    //타이머
    var myTimer = Timer()
    //스위치 온오프 카운터
    var c = 1
    
    var tF = true
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var count: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        count.text = String(counter)
    }

    @IBAction func play(_ sender: Any) {
        //타이머 실행
        if c == 1 {
            myTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            c = 0
        }else{
            myTimer.invalidate()
            c = 1
        }
        
        
    }
    @IBAction func bt(_ sender: Any) {
        //타이머 중지
        myTimer.invalidate()
    }
    @objc func doAnimation() {
//        타이머로 의해 동적으로 호출되는 함수
//      1~5,5~1 반복
        if counter == 5 {
            tF = false
        } else if counter == 1 {
            tF = true
        }
        if tF == true {
            counter = counter + 1
        } else if tF == false{
            counter = counter - 1
        }
        
//        1~5 반복
//        if counter == 5 {
//            counter = 1
//        } else {
//            counter = counter + 1
//        }
        myImageView.image = UIImage(named: "frame\(counter).png")
        count.text = String(counter)
    }
    

}

