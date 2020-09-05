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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let slidersVC = segue.destination as! ViewController {
            slidersVC.mainViewColor = viewOutlet.backgroundColor
             }
         }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
