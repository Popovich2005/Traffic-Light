//
//  ViewController.swift
//  Traffic Light
//
//  Created by Алексей Попов on 26.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
                
        greetingButton.layer.cornerRadius = 10
        
        
    }
    
    @IBAction func greetingButtonDidTapped() {
        
        
//        if redView.alpha == 0.5 && yellowView.alpha == 0.5 {
//            greetingButton.setTitle("Next", for: .normal)
//            redView.alpha = 1
//            greenView.alpha = 0.5
//        } else if redView.alpha == 1 {
//            redView.alpha = 0.5
//            yellowView.alpha = 1
//        } else {
//            yellowView.alpha = 0.5
//            greenView.alpha = 1
//        }
//        greetingButton.setTitle("Next", for: .normal)
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = 1
            greenView.alpha = 0.3
            yellowView.alpha = 0.3
        } else if yellowView.alpha == greenView.alpha {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }

    }
}

