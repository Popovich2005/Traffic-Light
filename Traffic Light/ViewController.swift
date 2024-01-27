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
        
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
                
        greetingButton.layer.cornerRadius = 10
    }
    
    @IBAction func greetingButtonDidTapped() {
        
        greetingButton.setTitle("Next", for: .normal)
        
        if redView.alpha == 0.5 && yellowView.alpha == 0.5 {
            redView.alpha = 1
            greenView.alpha = 0.5
        } else if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        }
    }
}

