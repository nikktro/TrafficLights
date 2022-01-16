//
//  ViewController.swift
//  TrafficLights
//
//  Created by Nikolay Trofimov on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var actionButton: UIButton!
    
    private var currentState = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeAlpha(to: 0.3)
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        actionButton.layer.cornerRadius = actionButton.frame.height / 4
    }
    
    
    @IBAction func actionButtonPressed() {
        switch currentState {
        case 1:
            changeAlpha(to: 0.3)
            redLight.alpha = 1
            actionButton.setTitle("NEXT", for: .normal)
            currentState += 1
        case 2:
            changeAlpha(to: 0.3)
            yellowLight.alpha = 1
            currentState += 1
        case 3:
            changeAlpha(to: 0.3)
            greenLight.alpha = 1
            currentState += 1
        default:
            changeAlpha(to: 0.3)
            actionButton.setTitle("START", for: .normal)
            currentState = 1
        }
    }
    
    
    private func changeAlpha(to alpha: CGFloat) {
        redLight.alpha = alpha
        yellowLight.alpha = alpha
        greenLight.alpha = alpha
    }
    
}

