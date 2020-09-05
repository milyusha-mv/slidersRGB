//
//  ViewController.swift
//  slidersRGB
//
//  Created by Михаил Милюша on 22.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// MARK: IBOutlets
    
    @IBOutlet var valueRedLabel: UILabel!
    @IBOutlet var valueGreenLabel: UILabel!
    @IBOutlet var valueBlueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var mainView: UIView!
    
// MARK: Private properties
    
    private let stepSlider: Float = 1

// MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        setTextLabel()
        setMainViewColor()
    }

// MARK: IBActions
    @IBAction func changeValueSlider(_ sender: UISlider) {
        setSlidersValue(for: sender)
        setTextLabel()
        setMainViewColor()
    }

// MARK: Private function
    private func setMainViewColor() {
        mainView.backgroundColor = .init(
            red: CGFloat(redSlider.value/255),
            green: CGFloat(greenSlider.value/255),
            blue: CGFloat(blueSlider.value/255),
            alpha: 1.0)
    }
    
    private func setTextLabel() {
        valueRedLabel.text = String(format: "%.0f", redSlider.value)
        valueGreenLabel.text = String(format: "%.0f", greenSlider.value)
        valueBlueLabel.text = String(format: "%.0f", blueSlider.value)
    }
    
    private func setSlidersValue(for slider: UISlider) {
        slider.value = round(slider.value / stepSlider) * stepSlider
    }
}

