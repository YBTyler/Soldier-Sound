//
//  ViewController.swift
//  Soldier Sound
//
//  Created by Tyler Wickherst on 9/6/23.
//

import UIKit
import AVFoundation
import Foundation
import AVKit

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    var videoPlayer: AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func bulletsSound(_ sender: UIButton) {
        bulletsSound()
    }
    
    @IBAction func proteinSound(_ sender: UIButton) {
        proteinSound()
    }
    
    @IBAction func weaponSound(_ sender: UIButton) {
        weaponSound()
    }
    
    @IBAction func gunSound(_ sender: UIButton) {
        gunSound()
    }
    
    @IBAction func hastaSound(_ sender: UIButton) {
        hastaSound()
    }
    
    @IBAction func gymSound(_ sender: UIButton) {
        gymSound()
    }
    @IBAction func videoButton(_ sender: UIButton) {
    }
    

    
    func bulletsSound(){
        let url = Bundle.main.url(forResource:"bullets", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf:url!)
        player!.play()
    }
    
    func proteinSound(){
        let url = Bundle.main.url(forResource:"protein", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf:url!)
        player!.play()
    }

    func weaponSound(){
        let url = Bundle.main.url(forResource:"weapon", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf:url!)
        player!.play()
    }

    func gunSound(){
        let url = Bundle.main.url(forResource:"gun", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf:url!)
        player!.play()
    }

    func hastaSound(){
        let url = Bundle.main.url(forResource:"hasta", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf:url!)
        player!.play()
    }

    func gymSound(){
        let url = Bundle.main.url(forResource:"gym", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf:url!)
        player!.play()
    }
    
    func videoButton(){
        let url = Bundle.main.url(forResource:"videoplayback", withExtension: "mp4")
        videoPlayer = try! AVPlayer(url:url!)
        videoPlayer!.play()
        let layer = AVPlayerLayer(player: AVPlayer?)
    }

   
}

