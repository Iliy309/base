//
//  ViewController.swift
//  Slider
//
//  Created by Macbook pro on 06/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var volumeSlider: UISlider!
    var player = AVAudioPlayer()
    let slider = UISlider()
    let textField = UITextView()
    let textField2 = UITextView()
    
    
    let textCurrentTime = UITextView()
    let textDeviceCurrentTime = UITextView()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        // Do any additional setup after loading the view.
        self.slider.frame = CGRect(x: 0, y: 0, width: 200, height: 70)
        self.slider.center = view.center
        self.view.addSubview(slider)
        
        
        self.slider.maximumValue = 100.0
        self.slider.minimumValue = 0.0
        
        
        self.slider.addTarget(self, action: #selector(changeSlider(param:)), for: .valueChanged)
        
        
        self.textField.text = "Юность"
        self.textField.frame = CGRect(x: 20, y: 40, width: 200, height: 70)
        self.view.addSubview(textField)
        self.textField2.text = "DoBro"
        self.textField2.frame = CGRect(x: 90, y: 40, width: 200, height: 70)
        self.view.addSubview(textField2)
        
        
        do {
            if let audioFile = Bundle.main.path(forResource: "DaBro", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioFile))
                self.slider.maximumValue = Float(player.duration)
                
            }
        } catch  {
            print("error")
        }
        self.player.play()
        
        
        self.textCurrentTime.frame = CGRect(x: 46, y: 229, width: 231, height: 34)
        self.view.addSubview(self.textCurrentTime)
        self.textCurrentTime.text = "\(self.player.duration/60)"
        
        self.textDeviceCurrentTime.frame = CGRect(x: 46, y: 280, width: 292, height: 34)
        self.view.addSubview(self.textDeviceCurrentTime)
        self.textDeviceCurrentTime.text = "\(self.player.deviceCurrentTime)"
        
    }

    @objc func changeSlider(param: UISlider) {
        if param == slider {
            self.player.currentTime = TimeInterval(param.value)
        }
    }
    
    
    @IBAction func volumeSliderAction(_ sender: UISlider) {
        self.player.volume = self.volumeSlider.value
    }
    @IBAction func pauseBotton(_ sender: UIButton) {
        self.player.pause()
        
    }
    @IBAction func PlayBotton(_ sender: UIButton) {
        self.player.play()
    }
    @IBAction func StopButton(_ sender: UIButton) {
        self.player.currentTime = TimeInterval(UInt8(0))
        self.player.stop()
        self.slider.value = slider.minimumValue
    }
}

