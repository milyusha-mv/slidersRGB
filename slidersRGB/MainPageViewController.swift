//
//  MainPageViewController.swift
//  slidersRGB
//
//  Created by Михаил Милюша on 05.09.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {

    @IBOutlet var viewOutlet: UIView!
    @IBOutlet var viewMainPageOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let sliderVC = segue.destination as? ViewController {
                sliderVC.mainViewColor = viewMainPageOutlet.backgroundColor
            }
        }

}
