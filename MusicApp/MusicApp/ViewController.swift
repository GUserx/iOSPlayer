//
//  ViewController.swift
//  MusicApp
//
//  Created by David Grigoryan on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    private var shouldPlay: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonDidTouch(_ sender: Any) {
        // Меняем состояние плеера (pause -> play, play -> pause)
        // Если нужно воспроизвести музыку - воспроизводим и делаем кнопку в виде паузы
        // иначе, если плеер не нужно воспроизводить - ставим плеер на паузу и делаем кнопку в виде воспроизведения
        shouldPlay = !shouldPlay
        if shouldPlay {
            play()
        } else {
            pause()
        }
    }
    
    func play() {
        let pauseImage = UIImage(systemName: "pause.fill")
        playButton.setImage(pauseImage, for: .normal)
    }
    
    func pause() {
        let playImage = UIImage(systemName: "play.fill")
        playButton.setImage(playImage, for: .normal)
    }
}
