//
//  ViewController.swift
//  playSounds
//
//  Created by Yako Kobayashi on 2018/03/04.
//  Copyright © 2018年 Yako Kobayashi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //エクセレント
    @IBAction func tapExcellent(_ sender: Any) {
        self.audioPlayer = General.playSound(delegate: self, name: "excellent", type: "mp3")
    }
    //グッド
    @IBAction func tapGood(_ sender: Any) {
        self.audioPlayer = General.playSound(delegate: self, name: "good", type: "mp3")
    }
    //バッド
    @IBAction func tapBad(_ sender: Any) {
        self.audioPlayer = General.playSound(delegate: self, name: "bad", type: "mp3")
    }
    //正解
    @IBAction func tapCollect(_ sender: Any) {
        self.audioPlayer = General.playSound(delegate: self, name: "correct", type: "wav")
    }
    //不正解
    @IBAction func tapIncollect(_ sender: Any) {
        self.audioPlayer = General.playSound(delegate: self, name: "incorrect", type: "mp3")
    }
    
}

