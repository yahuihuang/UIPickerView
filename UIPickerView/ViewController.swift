//
//  ViewController.swift
//  UIPickerView
//
//  Created by grace on 2019/11/16.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    
    var selectedAst: String? = nil
    var selectedBloud: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    //MARK: PickerView DataSource & Delegate [UIPickerViewDataSource protocol]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return astrological.count
        case 1:
            return bloudType.count
        default:
            return 0
        }
    }
    
    //MARK: PickerView DataSource & Delegate [UIPickerViewDelegate protocol]
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloudType[row]
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        switch component {
        case 0:
            print(astrological[row])
            if (row == 0) {
                selectedAst = nil
            } else {
                selectedAst = astrological[row]
            }
        case 1:
            print(bloudType[row])
            if (row == 0) {
                selectedBloud = nil
            } else {
                selectedBloud = bloudType[row]
            }
        default:
            break
        }
        
        if pickerView.selectedRow(inComponent: 0) != 0 && pickerView.selectedRow(inComponent: 1) != 0 {
            self.performSegue(withIdentifier: "goPage2", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goPage2" {
            if let nextPage = segue.destination as? SecondPageViewController {
                nextPage.msg = "星座: \(astrological[pickerView.selectedRow(inComponent: 0)]), 血型: \(bloudType[pickerView.selectedRow(inComponent: 1)])"
            }
        }
    }
    
    
}

