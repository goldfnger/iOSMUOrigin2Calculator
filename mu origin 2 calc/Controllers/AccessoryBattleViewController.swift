//
//  AccessoryBattleViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 18.01.2021.
//

import UIKit

class AccessoryBattleViewController: UIViewController, DataTransferToMainVCDelegate {
    
    @IBOutlet weak var supreme: UIImageView! {
        didSet {
            supreme.isUserInteractionEnabled = true
            supreme.image = UIImage(named: "supreme")
            supreme.tag = 13
        }
    }
    @IBOutlet weak var sigil: UIImageView! {
        didSet {
            sigil.isUserInteractionEnabled = true
            sigil.image = UIImage(named: "sigil")
            sigil.tag = 14
        }
    }
    @IBOutlet weak var scepter: UIImageView! {
        didSet {
            scepter.isUserInteractionEnabled = true
            scepter.image = UIImage(named: "scepter")
            scepter.tag = 15
        }
    }
    @IBOutlet weak var fruit: UIImageView! {
        didSet {
            fruit.isUserInteractionEnabled = true
            fruit.image = UIImage(named: "fruit")
            fruit.tag = 16
        }
    }
    @IBOutlet weak var roar: UIImageView! {
        didSet {
            roar.isUserInteractionEnabled = true
            roar.image = UIImage(named: "roar")
            roar.tag = 17
        }
    }
    @IBOutlet weak var nether: UIImageView! {
        didSet {
            nether.isUserInteractionEnabled = true
            nether.image = UIImage(named: "nether")
            nether.tag = 18
        }
    }
    @IBOutlet weak var crown: UIImageView! {
        didSet {
            crown.isUserInteractionEnabled = true
            crown.image = UIImage(named: "crown")
            crown.tag = 19
        }
    }
    @IBOutlet weak var kennen: UIImageView! {
        didSet {
            kennen.isUserInteractionEnabled = true
            kennen.image = UIImage(named: "kennen")
            kennen.tag = 20
        }
    }
    @IBOutlet weak var blade: UIImageView! {
        didSet {
            blade.isUserInteractionEnabled = true
            blade.image = UIImage(named: "blade")
            blade.tag = 21
        }
    }
    @IBOutlet weak var yinyang: UIImageView! {
        didSet {
            yinyang.isUserInteractionEnabled = true
            yinyang.image = UIImage(named: "yinyang")
            yinyang.tag = 22
        }
    }
    @IBOutlet weak var gourd: UIImageView! {
        didSet {
            gourd.isUserInteractionEnabled = true
            gourd.image = UIImage(named: "gourd")
            gourd.tag = 23
        }
    }
    @IBOutlet weak var white: UIImageView! {
        didSet {
            white.isUserInteractionEnabled = true
            white.image = UIImage(named: "white")
            white.tag = 24
        }
    }
    @IBOutlet weak var tears: UIImageView! {
        didSet {
            tears.isUserInteractionEnabled = true
            tears.image = UIImage(named: "tears")
            tears.tag = 25
        }
    }
    @IBOutlet weak var abomination: UIImageView! {
        didSet {
            abomination.isUserInteractionEnabled = true
            abomination.image = UIImage(named: "abomination")
            abomination.tag = 26
        }
    }
    @IBOutlet weak var gloom: UIImageView! {
        didSet {
            gloom.isUserInteractionEnabled = true
            gloom.image = UIImage(named: "gloom")
            gloom.tag = 27
        }
    }
    @IBOutlet weak var empress: UIImageView! {
        didSet {
            empress.isUserInteractionEnabled = true
            empress.image = UIImage(named: "empress")
            empress.tag = 28
        }
    }
    @IBOutlet weak var amulet: UIImageView! {
        didSet {
            amulet.isUserInteractionEnabled = true
            amulet.image = UIImage(named: "amulet")
            amulet.tag = 29
        }
    }
    @IBOutlet weak var supremacy: UIImageView! {
        didSet {
            supremacy.isUserInteractionEnabled = true
            supremacy.image = UIImage(named: "supremacy")
            supremacy.tag = 30
        }
    }
    @IBOutlet weak var light: UIImageView! {
        didSet {
            light.isUserInteractionEnabled = true
            light.image = UIImage(named: "light")
            light.tag = 31
        }
    }
    @IBOutlet weak var lily: UIImageView! {
        didSet {
            lily.isUserInteractionEnabled = true
            lily.image = UIImage(named: "lily")
            lily.tag = 6
        }
    }
    @IBOutlet weak var badge: UIImageView! {
        didSet {
            badge.isUserInteractionEnabled = true
            badge.image = UIImage(named: "badge")
            badge.tag = 7
        }
    }
    @IBOutlet weak var ball: UIImageView! {
        didSet {
            ball.isUserInteractionEnabled = true
            ball.image = UIImage(named: "ball")
            ball.tag = 8
        }
    }
    @IBOutlet weak var dimness: UIImageView! {
        didSet {
            dimness.isUserInteractionEnabled = true
            dimness.image = UIImage(named: "dimness")
            dimness.tag = 9
        }
    }
    @IBOutlet weak var eye: UIImageView! {
        didSet {
            eye.isUserInteractionEnabled = true
            eye.image = UIImage(named: "eye")
            eye.tag = 10
        }
    }
    @IBOutlet weak var comb: UIImageView! {
        didSet {
            comb.isUserInteractionEnabled = true
            comb.image = UIImage(named: "comb")
            comb.tag = 11
        }
    }
    @IBOutlet weak var mirror: UIImageView! {
        didSet {
            mirror.isUserInteractionEnabled = true
            mirror.image = UIImage(named: "mirror")
            mirror.tag = 12
        }
    }
    @IBOutlet weak var magicdust: UIImageView! {
        didSet {
            magicdust.isUserInteractionEnabled = true
            magicdust.image = UIImage(named: "magicdust")
            magicdust.tag = 1
        }
    }
    @IBOutlet weak var omen: UIImageView! {
        didSet {
            omen.isUserInteractionEnabled = true
            omen.image = UIImage(named: "omen")
            omen.tag = 2
        }
    }
    @IBOutlet weak var gentleness: UIImageView! {
        didSet {
            gentleness.isUserInteractionEnabled = true
            gentleness.image = UIImage(named: "gentleness")
            gentleness.tag = 3
        }
    }
    @IBOutlet weak var candlestick: UIImageView! {
        didSet {
            candlestick.isUserInteractionEnabled = true
            candlestick.image = UIImage(named: "candlestick")
            candlestick.tag = 4
        }
    }
    @IBOutlet weak var fortitude: UIImageView! {
        didSet {
            fortitude.isUserInteractionEnabled = true
            fortitude.image = UIImage(named: "fortitude")
            fortitude.tag = 5
        }
    }
    
    // This delegate variable is responsible to keep a track of the function and use that function to send data to destinationVC.
    // optional because as of now we haven’t set it up. We just initializes it with nil.
    var delegate: DataTransferToMainVCDelegate? = nil
    
    // need to keep tag of selected Spirit
    var selectedAccessoryTag: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("AccessoryBatlleVC: default value of selectedAccessoryTag is \(selectedAccessoryTag)")
        
        // Initialize Tap Gesture Recognizer
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer10 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer11 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer12 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer13 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer14 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer15 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer16 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer17 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer18 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer19 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer20 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer21 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer22 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer23 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer24 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer25 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer26 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer27 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer28 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer29 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer30 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        let tapGestureRecognizer31 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        
        
        // Add Tap Gesture Recognizer
        supreme.addGestureRecognizer(tapGestureRecognizer1)
        sigil.addGestureRecognizer(tapGestureRecognizer2)
        scepter.addGestureRecognizer(tapGestureRecognizer3)
        fruit.addGestureRecognizer(tapGestureRecognizer4)
        roar.addGestureRecognizer(tapGestureRecognizer5)
        nether.addGestureRecognizer(tapGestureRecognizer6)
        crown.addGestureRecognizer(tapGestureRecognizer7)
        kennen.addGestureRecognizer(tapGestureRecognizer8)
        blade.addGestureRecognizer(tapGestureRecognizer9)
        yinyang.addGestureRecognizer(tapGestureRecognizer10)
        gourd.addGestureRecognizer(tapGestureRecognizer11)
        white.addGestureRecognizer(tapGestureRecognizer12)
        tears.addGestureRecognizer(tapGestureRecognizer13)
        abomination.addGestureRecognizer(tapGestureRecognizer14)
        gloom.addGestureRecognizer(tapGestureRecognizer15)
        empress.addGestureRecognizer(tapGestureRecognizer16)
        amulet.addGestureRecognizer(tapGestureRecognizer17)
        supremacy.addGestureRecognizer(tapGestureRecognizer18)
        light.addGestureRecognizer(tapGestureRecognizer19)
        lily.addGestureRecognizer(tapGestureRecognizer20)
        badge.addGestureRecognizer(tapGestureRecognizer21)
        ball.addGestureRecognizer(tapGestureRecognizer22)
        dimness.addGestureRecognizer(tapGestureRecognizer23)
        eye.addGestureRecognizer(tapGestureRecognizer24)
        comb.addGestureRecognizer(tapGestureRecognizer25)
        mirror.addGestureRecognizer(tapGestureRecognizer26)
        magicdust.addGestureRecognizer(tapGestureRecognizer27)
        omen.addGestureRecognizer(tapGestureRecognizer28)
        gentleness.addGestureRecognizer(tapGestureRecognizer29)
        candlestick.addGestureRecognizer(tapGestureRecognizer30)
        fortitude.addGestureRecognizer(tapGestureRecognizer31)
    }
    
    // what will happen if Spirit is selected
    @objc func didTapImageView(_ sender: UITapGestureRecognizer) {
        print("AccessoryBatlleVC: selected accessory is ", sender.view!.tag)
        
        // saving tag of selected Spirit, to pass it further
        selectedAccessoryTag = sender.view!.tag
        print("AccessoryBatlleVC: new value of selectedAccessoryTag is \(selectedAccessoryTag)")
        
        // Check if the delegate is not nil. If the delegate is nil then that means its not yet authorized to use this function to send data. Hence, its very important to first check nil for the delegate variable.
        // Check if there is some data selected(entered) from the spirit tag (in the TextField). If there is no data selected(entered) then it doesn’t make sense to perform any action of sending data.
        if self.delegate != nil && self.selectedAccessoryTag != nil {
            
            // preparing data to send to destinationVC
            let dataToBeSent = self.selectedAccessoryTag
            
            // pass the data to our delegate which in turn uses the function to pass it to another view controller
            self.delegate?.dataToTransfer(tag: dataToBeSent)
            
            // dismissing current VC to previous in stack
            navigationController?.popViewController(animated: true)
        }
    }
    
    func dataToTransfer(tag: Int) {
        print("ready data to transfer: \(tag)")
    }
}
