//
//  AccessoryViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 18.01.2021.
//

import UIKit

class AccessoryViewController: UIViewController, DataTransferToMainVCDelegate {
  
  @IBOutlet weak var battleAccessory1: UIImageView! {
    didSet {
      battleAccessory1.isUserInteractionEnabled = true
      battleAccessory1.image = UIImage(systemName: "plus.square")
      battleAccessory1.tag = 1
    }
  }
  @IBOutlet weak var battleAccessory2: UIImageView! {
    didSet {
      battleAccessory2.isUserInteractionEnabled = true
      battleAccessory2.image = UIImage(systemName: "plus.square")
      battleAccessory2.tag = 2
    }
  }
  @IBOutlet weak var battleAccessory3: UIImageView! {
    didSet {
      battleAccessory3.isUserInteractionEnabled = true
      battleAccessory3.image = UIImage(systemName: "plus.square")
      battleAccessory3.tag = 3
    }
  }
  @IBOutlet weak var battleAccessory4: UIImageView! {
    didSet {
      battleAccessory4.isUserInteractionEnabled = true
      battleAccessory4.image = UIImage(systemName: "plus.square")
      battleAccessory4.tag = 4
    }
  }
  @IBOutlet weak var battleAccessory5: UIImageView! {
    didSet {
      battleAccessory5.isUserInteractionEnabled = true
      battleAccessory5.image = UIImage(systemName: "plus.square")
      battleAccessory5.tag = 5
    }
  }
  @IBOutlet weak var battleAccessory6: UIImageView! {
    didSet {
      battleAccessory6.isUserInteractionEnabled = true
      battleAccessory6.image = UIImage(systemName: "plus.square")
      battleAccessory6.tag = 6
    }
  }
  
  @IBOutlet weak var accessoryLabel: UILabel!
  @IBOutlet weak var accessoryTitleLabel: UILabel!
  @IBOutlet weak var accessoryRelationStats: UILabel!
  
  // need to keep tag of selected Accessory
  var selectedAccessoryTag: Int = 0
  
  // need to keep current selected battleSpirit
  var currentSelectedBattleAccessory: Int = 0
  
  // will keep list of selected spirits in a single array to find correspending relation
  var selectedAccessoriesForRelation = [String]()
  
  override func viewDidLoad() {
    
    accessoryLabel.text = K.accessoryLabel
    
    accessoryRelationStats.text = ""
    
    // Initialize Tap Gesture Recognizer
    let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    
    // Add Tap Gesture Recognizer
    battleAccessory1.addGestureRecognizer(tapGestureRecognizer1)
    battleAccessory2.addGestureRecognizer(tapGestureRecognizer2)
    battleAccessory3.addGestureRecognizer(tapGestureRecognizer3)
    battleAccessory4.addGestureRecognizer(tapGestureRecognizer4)
    battleAccessory5.addGestureRecognizer(tapGestureRecognizer5)
    battleAccessory6.addGestureRecognizer(tapGestureRecognizer6)
    
    print("AccessoryVC: default value of selectedAccessoryTag is \(selectedAccessoryTag)")
    print("AccessoryVC: default value of currentSelectedBattleAccessory is \(currentSelectedBattleAccessory)")
    
    
  }
  
  @objc func didTapImageView(_ sender: UITapGestureRecognizer) {
    print("AccessoryVC: battleAccessory[\(sender.view!.tag)] is pressed")
    currentSelectedBattleAccessory = sender.view!.tag
    print("AccessoryVC: now currentSelectedBattleAccessory is \(sender.view!.tag)")
    
    performSegue(withIdentifier: K.accessoryBattleSegue, sender: self)
  }
  
  func dataToTransfer(tag: Int) {
    print("AccessoryVC: passed tag is \(tag)")
    
    // passing transfered data to current selectedSpiritTag
    self.selectedAccessoryTag = tag
    print("AccessoryVC: now selectedAccessoryTag is \(selectedAccessoryTag)")
    
    updateBatteleAccessory()
  }
  
  // This method is called just before we actually transition to a new view controller. Inside this method we will set SecondViewController as the destination view controller and set-up the Delegate to self (remember delegate was initialized with nil in SpiritBattleViewController). By setting it to self we tell that this class is itself acting as the delegate.
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == K.accessoryBattleSegue {
      let destinationVC: AccessoryBattleViewController = segue.destination as! AccessoryBattleViewController
      destinationVC.delegate = self
    }
  }
  
  // updating UI with selected Spirit for currentSelectedBattleSpirit
  func updateBatteleAccessory() {
    
    // getting name from array for selected Spirit and saving it in new value result
    // .filter{} - allow to go through array and find Spirit by selectedSpiritTag
    // .map{} - allow to extract spiritIcon value as array type
    let result = K.accessories.filter {$0.accessoryTag == selectedAccessoryTag}.map({$0.accessoryIcon})
    print("after filtering by selectedAccessoryTag: \(result)")
    
    // converting spiritIcon to type String to be able change UIImage(named:)
    let stringResult = result.joined()
    print("converting to type String: \(stringResult)")
    
    // update battleAccessory according to selected
    switch currentSelectedBattleAccessory {
    case 1:
      battleAccessory1.image = UIImage(named: "\(stringResult)")
      selectedAccessoriesForRelation.append(stringResult)
      battleAccessory1.tag = selectedAccessoryTag
    case 2:
      battleAccessory2.image = UIImage(named: "\(stringResult)")
      selectedAccessoriesForRelation.append(stringResult)
      battleAccessory2.tag = selectedAccessoryTag
    case 3:
      battleAccessory3.image = UIImage(named: "\(stringResult)")
      selectedAccessoriesForRelation.append(stringResult)
      battleAccessory3.tag = selectedAccessoryTag
    case 4:
      battleAccessory4.image = UIImage(named: "\(stringResult)")
      selectedAccessoriesForRelation.append(stringResult)
      battleAccessory4.tag = selectedAccessoryTag
    case 5:
      battleAccessory5.image = UIImage(named: "\(stringResult)")
      selectedAccessoriesForRelation.append(stringResult)
      battleAccessory5.tag = selectedAccessoryTag
    case 6:
      battleAccessory6.image = UIImage(named: "\(stringResult)")
      selectedAccessoriesForRelation.append(stringResult)
      battleAccessory6.tag = selectedAccessoryTag
    default:
      print("default value")
    }
    
    // sorting array alphabetically
    selectedAccessoriesForRelation.sort()
    
    print("Selected and sorted accessories for Relation \(selectedAccessoriesForRelation)")
    
    // disable secondary click on already selected spirit
    if battleAccessory1.tag == selectedAccessoryTag {
      battleAccessory1.isUserInteractionEnabled = false
    } else if battleAccessory2.tag == selectedAccessoryTag {
      battleAccessory2.isUserInteractionEnabled = false
    } else if battleAccessory3.tag == selectedAccessoryTag {
      battleAccessory3.isUserInteractionEnabled = false
    } else if battleAccessory4.tag == selectedAccessoryTag {
      battleAccessory4.isUserInteractionEnabled = false
    } else if battleAccessory5.tag == selectedAccessoryTag {
      battleAccessory5.isUserInteractionEnabled = false
    } else if battleAccessory6.tag == selectedAccessoryTag {
      battleAccessory6.isUserInteractionEnabled = false
    }
    
    print(battleAccessory1.tag)
    print(battleAccessory2.tag)
    print(battleAccessory3.tag)
    print(battleAccessory4.tag)
    print(battleAccessory5.tag)
    print(battleAccessory6.tag)
    
    
    findAccessoryRelation()
  }
  
  // will keep all found relations for selected accessories
  var foundAccessoryRelations = [AccessoryRelation]()
  
  // will keep all found relationStats.
  var foundAccessoryRelationStats = Set<String>()
  
  // find relation func
  func findAccessoryRelation() {
    
    // filtering relations by relationSpiritIcons
    foundAccessoryRelations = K.accesoryRelation.filter {
      $0.relationAccessoryIcons.allSatisfy { icon in
        selectedAccessoriesForRelation.contains(icon)
      }
    }
    print("saved relations \(foundAccessoryRelations)")
    
    print(" all relationStats become: \(foundAccessoryRelations)")
    
    // need to execute relationStats from foundRelations and change label
    for relationStats in foundAccessoryRelations {
      
      foundAccessoryRelationStats.insert(relationStats.relationStats)
      print(" all relationStats become: \(foundAccessoryRelationStats.sorted())")
      
      // set label and separating by rows
      accessoryRelationStats.text = "\(foundAccessoryRelationStats.joined(separator: ";\n"))"
      // auto resize for label if need
      accessoryRelationStats.sizeToFit()
    }
  }
  
  // clear selected spirits, relations and stats to display
  @IBAction func clearAccessoryButton(_ sender: Any) {
    battleAccessory1.image = UIImage(systemName: "plus.square")
    battleAccessory1.isUserInteractionEnabled = true
    battleAccessory1.tag = 1
    battleAccessory2.image = UIImage(systemName: "plus.square")
    battleAccessory2.isUserInteractionEnabled = true
    battleAccessory2.tag = 2
    battleAccessory3.image = UIImage(systemName: "plus.square")
    battleAccessory3.isUserInteractionEnabled = true
    battleAccessory3.tag = 3
    battleAccessory4.image = UIImage(systemName: "plus.square")
    battleAccessory4.isUserInteractionEnabled = true
    battleAccessory4.tag = 4
    battleAccessory5.image = UIImage(systemName: "plus.square")
    battleAccessory5.isUserInteractionEnabled = true
    battleAccessory5.tag = 5
    battleAccessory6.image = UIImage(systemName: "plus.square")
    battleAccessory6.isUserInteractionEnabled = true
    battleAccessory6.tag = 6
    selectedAccessoryTag = 0
    currentSelectedBattleAccessory = 0
    selectedAccessoriesForRelation.removeAll()
    foundAccessoryRelations.removeAll()
    foundAccessoryRelationStats.removeAll()
    accessoryRelationStats.text = ""
    accessoryRelationStats.contentMode = .scaleAspectFit
  }
  
  @IBAction func albumButtonPressed(_ sender: UIButton) {
    
    performSegue(withIdentifier: K.accessoryBattleSegue, sender: self)
  }
  
  @IBAction func relationButtonPressed(_ sender: UIButton) {
    
    performSegue(withIdentifier: K.accessoryRelationSegue, sender: self)
  }
}
