//
//  ViewController.swift
//  slidersRGB
//
//  Created by Михаил Милюша on 22.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var valueRedLabel: UILabel!
    @IBOutlet var valueGreenLabel: UILabel!
    @IBOutlet var valueBlueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var mainView: UIView!
    
    private let stepSlider: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valueRedLabel.text = String(format: "%.0f", redSlider.value)
        valueGreenLabel.text = String(format: "%.0f", greenSlider.value)
        valueBlueLabel.text = String(format: "%.0f", blueSlider.value)
        
        setMainViewColor()
    }

    @IBAction func changeValueSlider() {
        redSlider.value = round(redSlider.value / stepSlider) * stepSlider
        greenSlider.value = round(greenSlider.value / stepSlider) * stepSlider
        blueSlider.value = round(blueSlider.value / stepSlider) * stepSlider
        
        valueRedLabel.text = String(format: "%.0f", redSlider.value)
        valueGreenLabel.text = String(format: "%.0f", greenSlider.value)
        valueBlueLabel.text = String(format: "%.0f", blueSlider.value)
        
        setMainViewColor()
    }
    
    private func setMainViewColor() {
        mainView.backgroundColor = .init(
            red: CGFloat(redSlider.value/255),
            green: CGFloat(greenSlider.value/255),
            blue: CGFloat(blueSlider.value/255),
            alpha: 1.0)
    }
}

