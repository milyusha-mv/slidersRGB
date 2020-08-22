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
    
    private let minValue: Float = 0
    private let maxValue: Float = 255
    
    private let stepSlider: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumValue = minValue
        redSlider.maximumValue = maxValue
        
        greenSlider.minimumValue = minValue
        greenSlider.maximumValue = maxValue
        
        blueSlider.minimumValue = minValue
        blueSlider.maximumValue = maxValue
        
        valueRedLabel.text = String(format: "%.0f", redSlider.value)
        valueGreenLabel.text = String(format: "%.0f", greenSlider.value)
        valueBlueLabel.text = String(format: "%.0f", blueSlider.value)
        
    }

    @IBAction func changeValueRedSlider() {
        let roundedValue = round(redSlider.value / stepSlider) * stepSlider
        redSlider.value = roundedValue
        valueRedLabel.text = String(format: "%.0f", redSlider.value)
        setMainViewColor()
    }
    
    @IBAction func changeValueGreenSlider() {
        let roundedValue = round(greenSlider.value / stepSlider) * stepSlider
        greenSlider.value = roundedValue
        valueGreenLabel.text = String(format: "%.0f", greenSlider.value)
        setMainViewColor()
    }
    
    @IBAction func changeValueBlueSlider() {
        let roundedValue = round(blueSlider.value / stepSlider) * stepSlider
        blueSlider.value = roundedValue
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

