//
//  CraftViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 09.12.2020.
//

import UIKit

class CraftViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var craftLabel: UILabel!
    @IBOutlet weak var selectTier: UILabel!
    @IBOutlet weak var totalAmmountRequired: UILabel!
    @IBOutlet weak var toBeCraftedPicker: UIPickerView!
    
    @IBOutlet weak var requiredx2: UILabel!
    @IBOutlet weak var requiredx1: UILabel!
    
    let toBeCraftedTier = ["6","7","8","9","10","11","12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toBeCraftedPicker.delegate = self
        toBeCraftedPicker.dataSource = self
        
        toBeCraftedPicker.setValue(#colorLiteral(red: 1, green: 0.262745098, blue: 0.003921568627, alpha: 1), forKey: "textColor")
        
        craftLabel.text = K.craftLabel
        selectTier.text = "My current AA setup"
        totalAmmountRequired.text = "Ammout of T5 for next Tier"
        
        requiredx1.text = "\(3*2)"
        requiredx2.text = "\(3*2)"
    }
}

//MARK: - UIPickerViewDataSource

extension CraftViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return toBeCraftedTier.count
        } else {
            return toBeCraftedTier.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return toBeCraftedTier[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let selectedNumber = toBeCraftedTier[row]
        
        print("tier number is \(toBeCraftedTier[row])")
        
        // left picker
        if component == 0 {
            switch selectedNumber {
            case "6":
                requiredx1.text = "\(3*2)"
            case "7":
                requiredx1.text = "\(9*2)"
            case "8":
                requiredx1.text = "\(27*2)"
            case "9":
                requiredx1.text = "\(81*2)"
            case "10":
                requiredx1.text = "\(243*2)"
            case "11":
                requiredx1.text = "\(729*2)"
            case "12":
                requiredx1.text = "\(2187*2)"
            default:
                requiredx1.text = "Try again"
                requiredx2.text = "Try again"
            }
        // right picker
        } else {
            switch selectedNumber {
            case "6":
                requiredx2.text = "\(3*2)"
            case "7":
                requiredx2.text = "\(9*2)"
            case "8":
                requiredx2.text = "\(27*2)"
            case "9":
                requiredx2.text = "\(81*2)"
            case "10":
                requiredx2.text = "\(243*2)"
            case "11":
                requiredx2.text = "\(729*2)"
            case "12":
                requiredx2.text = "\(2187*2)"
            default:
                requiredx1.text = "Try again"
                requiredx2.text = "Try again"
            }
        }
        
    }

}


