//
//  SpiritViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 11.12.2020.
//

import UIKit

class SpiritViewController: UIViewController, DataTransferToMainVCDelegate {
        
    @IBOutlet weak var battleSpirit1: UIImageView! {
        didSet {
            battleSpirit1.isUserInteractionEnabled = true
            battleSpirit1.image = UIImage(systemName: "plus.square")
            battleSpirit1.tag = 1
        }
    }
    @IBOutlet weak var battleSpirit2: UIImageView! {
        didSet {
            battleSpirit2.isUserInteractionEnabled = true
            battleSpirit2.image = UIImage(systemName: "plus.square")
            battleSpirit2.tag = 2
        }
    }
    @IBOutlet weak var battleSpirit3: UIImageView! {
        didSet {
            battleSpirit3.isUserInteractionEnabled = true
            battleSpirit3.image = UIImage(systemName: "plus.square")
            battleSpirit3.tag = 3
        }
    }
    @IBOutlet weak var battleSpirit4: UIImageView! {
        didSet {
            battleSpirit4.isUserInteractionEnabled = true
            battleSpirit4.image = UIImage(systemName: "plus.square")
            battleSpirit4.tag = 4
        }
    }
    
    @IBOutlet weak var spiritRelationLabel: UILabel!
    @IBOutlet weak var totalStatsTitle: UILabel!
    @IBOutlet weak var totalStatsRelation: UILabel!
        
    var selectedSpiritTag: Int = 0
    
    var currentSelectedBattleSpirit: Int = 0
    
    var selectedSpiritsForRelation = [String]()
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spiritRelationLabel.text = K.spiritLabel
                
        totalStatsRelation.text = ""
                
        // Initialize Tap Gesture Recognizer
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        
        // Add Tap Gesture Recognizer
        battleSpirit1.addGestureRecognizer(tapGestureRecognizer1)
        battleSpirit2.addGestureRecognizer(tapGestureRecognizer2)
        battleSpirit3.addGestureRecognizer(tapGestureRecognizer3)
        battleSpirit4.addGestureRecognizer(tapGestureRecognizer4)
        
        print("SpiritVC: default value of selectedSpiritTag is \(selectedSpiritTag)")
        print("SpiritVC: default value of currentSelectedBattleSpirit is \(currentSelectedBattleSpirit)")
    }
    
    // what will happen if selection icons are pressed
    @objc func didTapImageView(_ sender: UITapGestureRecognizer) {
        print("SpiritVC: battleSpirit[\(sender.view!.tag)] is pressed")
        currentSelectedBattleSpirit = sender.view!.tag
        print("SpiritVC: now currentSelectedBattleSpirit is \(sender.view!.tag)")
        
        performSegue(withIdentifier: K.spiritBattleSegue, sender: self)
    }
    
    // used to transfer and store data
    func dataToTransfer(tag: Int) {
        print("SpiritVC: passed tag is \(tag)")
        
        // passing transferred data to current selectedSpiritTag
        self.selectedSpiritTag = tag
        print("SpiritVC: now selectedSpiritTag is \(selectedSpiritTag)")
        
        updateBatteleSpirit()
    }
    
    // This method is called just before we actually transition to a new view controller. Inside this method we will set SecondViewController as the destination view controller and set-up the Delegate to self (remember delegate was initialised with nil in SpiritBattleViewController). By setting it to self we tell that this class is itself acting as the delegate.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.spiritBattleSegue {
            let destinationVC: SpiritBattleViewController = segue.destination as! SpiritBattleViewController
            destinationVC.delegate = self
        }
    }
    
    // updating UI with selected Spirit for currentSelectedBattleSpirit
    func updateBatteleSpirit() {
                
        // getting name from array for selected Spirit and saving it in new value result
        // .filter{} - allow to go through array and find Spirit by selectedSpiritTag
        // .map{} - allow to extract spiritIcon value as array type
        let result = K.spirits.filter {$0.spiritTag == selectedSpiritTag}.map({$0.spiritIcon})
        print("after filtering by selectedSpiritTab: \(result)")
        
        // converting spiritIcon to type String to be able change UIImage(named:)
        let stringResult = result.joined()
        print("converting to type String: \(stringResult)")
        
        // update battleSpirit's according to selected
        switch currentSelectedBattleSpirit {
        case 1:
            battleSpirit1.image = UIImage(named: "\(stringResult)")
            selectedSpiritsForRelation.append(stringResult)
            battleSpirit1.tag = selectedSpiritTag
        case 2:
            battleSpirit2.image = UIImage(named: "\(stringResult)")
            selectedSpiritsForRelation.append(stringResult)
            battleSpirit2.tag = selectedSpiritTag
        case 3:
            battleSpirit3.image = UIImage(named: "\(stringResult)")
            selectedSpiritsForRelation.append(stringResult)
            battleSpirit3.tag = selectedSpiritTag
        case 4:
            battleSpirit4.image = UIImage(named: "\(stringResult)")
            selectedSpiritsForRelation.append(stringResult)
            battleSpirit4.tag = selectedSpiritTag
        default:
            print("default value")
        }
        
        // sorting array alphabetically
        selectedSpiritsForRelation.sort()
        
        print("Selected and sorted spirits for Relation \(selectedSpiritsForRelation)")
        
//         disable secondary click on already selected spirit
        if battleSpirit1.tag == selectedSpiritTag {
            battleSpirit1.isUserInteractionEnabled = false
        } else if battleSpirit2.tag == selectedSpiritTag {
            battleSpirit2.isUserInteractionEnabled = false
        } else if battleSpirit3.tag == selectedSpiritTag {
            battleSpirit3.isUserInteractionEnabled = false
        } else if battleSpirit4.tag == selectedSpiritTag {
            battleSpirit4.isUserInteractionEnabled = false
        }
        
        print(battleSpirit1.tag)
        print(battleSpirit2.tag)
        print(battleSpirit3.tag)
        print(battleSpirit4.tag)

        findRelation()
    }
    
    // will keep all found relations for selected spirits
    var foundRelations = [SpiritRelation]()
    
    // will keep all found relationStats. 
    var foundRelationStats = Set<String>()
    
    func findRelation() {
        
        // filtering relations by relationSpiritIcons
        foundRelations = K.spiritRelations.filter {
            $0.relationSpiritIcons.allSatisfy { icon in
                selectedSpiritsForRelation.contains(icon)
            }
        }
        print("saved relations \(foundRelations)")
        
        print(" all relationStats become: \(foundRelationStats)")
        
        // need to execute relationStats from foundRelations and change label
        for relationStats in foundRelations {

            foundRelationStats.insert(relationStats.relationStats)
            print(" all relationStats become: \(foundRelationStats.sorted())")

            // set label and separating by rows
            totalStatsRelation.text = "\(foundRelationStats.joined(separator: ";\n"))"
            // auto resize for label if need
            totalStatsRelation.sizeToFit()
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        battleSpirit1.image = UIImage(systemName: "plus.square")
        battleSpirit1.isUserInteractionEnabled = true
        battleSpirit1.tag = 1
        battleSpirit2.image = UIImage(systemName: "plus.square")
        battleSpirit2.isUserInteractionEnabled = true
        battleSpirit2.tag = 2
        battleSpirit3.image = UIImage(systemName: "plus.square")
        battleSpirit3.isUserInteractionEnabled = true
        battleSpirit3.tag = 3
        battleSpirit4.image = UIImage(systemName: "plus.square")
        battleSpirit4.isUserInteractionEnabled = true
        battleSpirit4.tag = 4
        selectedSpiritTag = 0
        currentSelectedBattleSpirit = 0
        selectedSpiritsForRelation.removeAll()
        foundRelations.removeAll()
        foundRelationStats.removeAll()
        totalStatsRelation.text = ""
        totalStatsRelation.contentMode = .scaleAspectFit
    }
    
    @IBAction func albumButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.spiritBattleSegue, sender: self)
    }
    
    @IBAction func relationButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.relationSegue, sender: self)
    }
    
}
