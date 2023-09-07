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
        guard let path = Bundle.main.path(forResource: "videoplayback", ofType: "mp4") else {
            print("error")
            return
        }
        let vidPlayer = AVPlayer.init(url: URL(filePath: path))
        let playerController = AVPlayerViewController()
        playerController.player = vidPlayer
        present(playerController, animated: true){
            vidPlayer.play()
        }
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

   
}

