//
//  SecondPageViewController.swift
//  UIPickerView
//
//  Created by grace on 2019/11/16.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class SecondPageViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var msg: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = msg
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
