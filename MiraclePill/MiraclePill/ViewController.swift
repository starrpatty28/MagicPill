//
//  ViewController.swift
//  MiraclePill
//
//  Created by Noi-Ariella Baht Israel on 3/15/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePicketBtn: UIButton!
    @IBOutlet weak var zipCountryLbl: UILabel!
    @IBOutlet weak var zipCountryTxt: UITextField!
    
    
    let states = ["Alaska", "Arkansas", "Texas", "California", "Washington", "Main", "New York"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePicketBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    
}

