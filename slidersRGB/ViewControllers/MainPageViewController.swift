//
//  MainPageViewController.swift
//  slidersRGB
//
//  Created by Михаил Милюша on 05.09.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate {
    func saveColor(_ color: UIColor)
}

class MainPageViewController: UIViewController {

    @IBOutlet var viewOutlet: UIView!
    @IBOutlet var viewMainPageOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingColorVC = segue.destination as? SettingColorViewController {
            settingColorVC.mainViewColor = viewMainPageOutlet.backgroundColor
            settingColorVC.delegate = self
        }
    }

}
extension MainPageViewController: ViewControllerDelegate {
    func saveColor(_ color: UIColor) {
        viewMainPageOutlet.backgroundColor = color
    }
}
