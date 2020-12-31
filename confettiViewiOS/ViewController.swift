//
//  ViewController.swift
//  confettiViewiOS
//
//  Created by MAC on 31/12/20.
//

import UIKit
import SwiftConfettiView
class ViewController: UIViewController {
    
    
    

    @IBOutlet weak var confettiVieww: SwiftConfettiView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confettiVieww.type = .confetti
        confettiVieww.intensity = 3
        confettiVieww.stopConfetti()

        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    @IBAction func Shower(_ sender: UIButton) {
        confettiVieww.startConfetti()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7){
            self.confettiVieww.stopConfetti()
        }
    }
    
}

