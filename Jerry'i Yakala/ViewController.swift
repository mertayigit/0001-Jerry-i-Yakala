//
//  ViewController.swift
//  Jerry'i Yakala
//
//  Created by Mert Ahmet Yiğit on 11.02.2018.
//  Copyright © 2018 Mert Yiğit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    @IBOutlet weak var jerry1: UIImageView!
    @IBOutlet weak var jerry2: UIImageView!
    @IBOutlet weak var jerry3: UIImageView!
    @IBOutlet weak var jerry4: UIImageView!
    @IBOutlet weak var jerry5: UIImageView!
    @IBOutlet weak var jerry6: UIImageView!
    @IBOutlet weak var jerry7: UIImageView!
    @IBOutlet weak var jerry8: UIImageView!
    @IBOutlet weak var jerry9: UIImageView!
    @IBOutlet weak var jerry10: UIImageView!
    @IBOutlet weak var jerry11: UIImageView!
    @IBOutlet weak var jerry13: UIImageView!
    @IBOutlet weak var jerry14: UIImageView!
    @IBOutlet weak var jerry15: UIImageView!
    @IBOutlet weak var jerry16: UIImageView!
    @IBOutlet weak var jerry17: UIImageView!
    @IBOutlet weak var jerry18: UIImageView!
    @IBOutlet weak var jerry19: UIImageView!
    @IBOutlet weak var jerry20: UIImageView!
    @IBOutlet weak var jerry21: UIImageView!
    @IBOutlet weak var jerry22: UIImageView!
    @IBOutlet weak var jerry23: UIImageView!
    @IBOutlet weak var jerry24: UIImageView!
    @IBOutlet weak var jerry25: UIImageView!
    @IBOutlet weak var jerry26: UIImageView!
    
    var score = 0
    var timer = Timer()
    var counter = 0
    var jerryArray = [UIImageView]()
    var hideTimer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let highScore = UserDefaults.standard.object(forKey: "highscore")
        
        if highScore == nil {
            highscoreLabel.text = "0"
        }
        if let newScore = highScore as? Int {
            highscoreLabel.text = String(newScore)
        }
        
        
        scoreLabel.text = String(score)
        
       
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer13 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer14 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer15 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer16 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer17 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer18 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer19 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer20 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer21 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer22 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer23 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer24 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer25 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
                let recognizer26 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        
        jerry1.isUserInteractionEnabled = true
        jerry2.isUserInteractionEnabled = true
        jerry3.isUserInteractionEnabled = true
        jerry4.isUserInteractionEnabled = true
        jerry5.isUserInteractionEnabled = true
        jerry6.isUserInteractionEnabled = true
        jerry7.isUserInteractionEnabled = true
        jerry8.isUserInteractionEnabled = true
        jerry9.isUserInteractionEnabled = true
        jerry10.isUserInteractionEnabled = true
        jerry11.isUserInteractionEnabled = true
        jerry13.isUserInteractionEnabled = true
        jerry14.isUserInteractionEnabled = true
        jerry15.isUserInteractionEnabled = true
        jerry16.isUserInteractionEnabled = true
        jerry17.isUserInteractionEnabled = true
        jerry18.isUserInteractionEnabled = true
        jerry19.isUserInteractionEnabled = true
        jerry20.isUserInteractionEnabled = true
        jerry21.isUserInteractionEnabled = true
        jerry22.isUserInteractionEnabled = true
        jerry23.isUserInteractionEnabled = true
        jerry24.isUserInteractionEnabled = true
        jerry25.isUserInteractionEnabled = true
        jerry26.isUserInteractionEnabled = true

        jerry1.addGestureRecognizer(recognizer1)
        jerry2.addGestureRecognizer(recognizer2)
        jerry3.addGestureRecognizer(recognizer3)
        jerry4.addGestureRecognizer(recognizer4)
        jerry5.addGestureRecognizer(recognizer5)
        jerry6.addGestureRecognizer(recognizer6)
        jerry7.addGestureRecognizer(recognizer7)
        jerry8.addGestureRecognizer(recognizer8)
        jerry9.addGestureRecognizer(recognizer9)
        jerry10.addGestureRecognizer(recognizer10)
        jerry11.addGestureRecognizer(recognizer11)
        jerry13.addGestureRecognizer(recognizer13)
        jerry14.addGestureRecognizer(recognizer14)
        jerry15.addGestureRecognizer(recognizer15)
        jerry16.addGestureRecognizer(recognizer16)
        jerry17.addGestureRecognizer(recognizer17)
        jerry18.addGestureRecognizer(recognizer18)
        jerry19.addGestureRecognizer(recognizer19)
        jerry20.addGestureRecognizer(recognizer20)
        jerry21.addGestureRecognizer(recognizer21)
        jerry22.addGestureRecognizer(recognizer22)
        jerry23.addGestureRecognizer(recognizer23)
        jerry24.addGestureRecognizer(recognizer24)
        jerry25.addGestureRecognizer(recognizer25)
        jerry26.addGestureRecognizer(recognizer26)
        
        counter = 30
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(ViewController.hideJerry), userInfo: nil, repeats: true)
        
        //Diziler
        
        jerryArray.append(jerry1)
        jerryArray.append(jerry2)
        jerryArray.append(jerry3)
        jerryArray.append(jerry4)
        jerryArray.append(jerry5)
        jerryArray.append(jerry6)
        jerryArray.append(jerry7)
        jerryArray.append(jerry8)
        jerryArray.append(jerry9)
        jerryArray.append(jerry10)
        jerryArray.append(jerry11)
        jerryArray.append(jerry13)
        jerryArray.append(jerry14)
        jerryArray.append(jerry15)
        jerryArray.append(jerry16)
        jerryArray.append(jerry17)
        jerryArray.append(jerry18)
        jerryArray.append(jerry19)
        jerryArray.append(jerry20)
        jerryArray.append(jerry21)
        jerryArray.append(jerry22)
        jerryArray.append(jerry23)
        jerryArray.append(jerry24)
        jerryArray.append(jerry25)
        jerryArray.append(jerry26)
        
        hideJerry()

    }
    
    
    
    @objc func hideJerry() {
        for jerry in jerryArray {
            jerry.isHidden = true
        }
        
       let random = Int(arc4random_uniform(UInt32(jerryArray.count - 1)))
        jerryArray[random].isHidden = false
        
    }
    
    
    
    @objc func countDown() {
        counter = counter - 1
        timeLabel.text = String(counter)
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            for jerry in jerryArray {
                jerry.isHidden = true
            }
            
            if self.score > Int(highscoreLabel.text!)! {
                UserDefaults.standard.set(self.score, forKey: "highscore")
                highscoreLabel.text = String(self.score)
            }
            
            
            let alert = UIAlertController(title: "Üzgünüm", message: "Jerry'i yakalaman için sana verilen süre doldu", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "Pes Ediyorum", style: UIAlertActionStyle.default, handler: nil)
            let replayButton = UIAlertAction(title: "Tekrar Denemeliyim", style: UIAlertActionStyle.cancel, handler: { (UIAlertAction) in
                self.score = 0
                self.scoreLabel.text = String(self.score)
                self.counter = 30
                self.timeLabel.text =  String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.hideJerry), userInfo: nil, repeats: true)
                
            })
            
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    @objc func increaseScore(){

        score = score + 1
        scoreLabel.text = String(score)
        
    }



}

