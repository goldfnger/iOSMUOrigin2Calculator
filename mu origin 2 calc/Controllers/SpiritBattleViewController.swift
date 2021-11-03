//
//  SpiritBattleViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 14.12.2020.
//

import UIKit

protocol DataTransferToMainVCDelegate {
  func dataToTransfer(tag: Int)
}

class SpiritBattleViewController: UIViewController, DataTransferToMainVCDelegate {
  
  @IBOutlet weak var treant: UIImageView! {
    didSet {
      treant.isUserInteractionEnabled = true
      treant.image = UIImage(named: "treant")
      treant.tag = 12
    }
  }
  @IBOutlet weak var glutton: UIImageView! {
    didSet {
      glutton.isUserInteractionEnabled = true
      glutton.image = UIImage(named: "glutton")
      glutton.tag = 11
    }
  }
  @IBOutlet weak var dragonkid: UIImageView! {
    didSet {
      dragonkid.isUserInteractionEnabled = true
      dragonkid.image = UIImage(named: "dragonkid")
      dragonkid.tag = 10
    }
  }
  @IBOutlet weak var demon: UIImageView! {
    didSet {
      demon.isUserInteractionEnabled = true
      demon.image = UIImage(named: "demon")
      demon.tag = 9
    }
  }
  @IBOutlet weak var angel: UIImageView! {
    didSet {
      angel.isUserInteractionEnabled = true
      angel.image = UIImage(named: "angel")
      angel.tag = 8
    }
  }
  @IBOutlet weak var centaur: UIImageView! {
    didSet {
      centaur.isUserInteractionEnabled = true
      centaur.image = UIImage(named: "centaur")
      centaur.tag = 7
    }
  }
  @IBOutlet weak var baffet: UIImageView! {
    didSet {
      baffet.isUserInteractionEnabled = true
      baffet.image = UIImage(named: "baffet")
      baffet.tag = 6
    }
  }
  @IBOutlet weak var anima: UIImageView! {
    didSet {
      anima.isUserInteractionEnabled = true
      anima.image = UIImage(named: "anima")
      anima.tag = 5
    }
  }
  @IBOutlet weak var wisp: UIImageView! {
    didSet {
      wisp.isUserInteractionEnabled = true
      wisp.image = UIImage(named: "wisp")
      wisp.tag = 4
    }
  }
  @IBOutlet weak var imp: UIImageView! {
    didSet {
      imp.isUserInteractionEnabled = true
      imp.image = UIImage(named: "imp")
      imp.tag = 3
    }
  }
  @IBOutlet weak var griffin: UIImageView! {
    didSet {
      griffin.isUserInteractionEnabled = true
      griffin.image = UIImage(named: "griffin")
      griffin.tag = 2
    }
  }
  @IBOutlet weak var littleangel: UIImageView! {
    didSet {
      littleangel.isUserInteractionEnabled = true
      littleangel.image = UIImage(named: "littleangel")
      littleangel.tag = 1
    }
  }
  @IBOutlet weak var bamboo: UIImageView! {
    didSet {
      bamboo.isUserInteractionEnabled = true
      bamboo.image = UIImage(named: "bamboo")
      bamboo.tag = 13
    }
  }
  @IBOutlet weak var god: UIImageView! {
    didSet {
      god.isUserInteractionEnabled = true
      god.image = UIImage(named: "god")
      god.tag = 14
    }
  }
  @IBOutlet weak var harpy: UIImageView! {
    didSet {
      harpy.isUserInteractionEnabled = true
      harpy.image = UIImage(named: "harpy")
      harpy.tag = 15
    }
  }
  @IBOutlet weak var frostessence: UIImageView! {
    didSet {
      frostessence.isUserInteractionEnabled = true
      frostessence.image = UIImage(named: "frostessence")
      frostessence.tag = 16
    }
  }
  @IBOutlet weak var sunscorch: UIImageView! {
    didSet {
      sunscorch.isUserInteractionEnabled = true
      sunscorch.image = UIImage(named: "sunscorch")
      sunscorch.tag = 17
    }
  }
  @IBOutlet weak var razor: UIImageView! {
    didSet {
      razor.isUserInteractionEnabled = true
      razor.image = UIImage(named: "razor")
      razor.tag = 18
    }
  }
  @IBOutlet weak var sandGolem: UIImageView! {
    didSet {
      sandGolem.isUserInteractionEnabled = true
      sandGolem.image = UIImage(named: "golem")
      sandGolem.tag = 19
    }
  }
  @IBOutlet weak var heavenlyMaiden: UIImageView! {
    didSet {
      heavenlyMaiden.isUserInteractionEnabled = true
      heavenlyMaiden.image = UIImage(named: "maiden")
      heavenlyMaiden.tag = 20
    }
  }
  @IBOutlet weak var lampGenie: UIImageView! {
    didSet {
      lampGenie.isUserInteractionEnabled = true
      lampGenie.image = UIImage(named: "genie")
      lampGenie.tag = 21
    }
  }
  @IBOutlet weak var azure: UIImageView! {
    didSet {
      azure.isUserInteractionEnabled = true
      azure.image = UIImage(named: "azure")
      azure.tag = 22
    }
  }
  @IBOutlet weak var flaming: UIImageView! {
    didSet {
      flaming.isUserInteractionEnabled = true
      flaming.image = UIImage(named: "flaming")
      flaming.tag = 23
    }
  }
  @IBOutlet weak var inukami: UIImageView! {
    didSet {
      inukami.isUserInteractionEnabled = true
      inukami.image = UIImage(named: "inukami")
      inukami.tag = 24
    }
  }
  @IBOutlet weak var shadow: UIImageView! {
    didSet {
      shadow.isUserInteractionEnabled = true
      shadow.image = UIImage(named: "shadow")
      shadow.tag = 25
    }
  }
  @IBOutlet weak var titan: UIImageView! {
    didSet {
      titan.isUserInteractionEnabled = true
      titan.image = UIImage(named: "titan")
      titan.tag = 26
    }
  }
  @IBOutlet weak var vampire: UIImageView! {
    didSet {
      vampire.isUserInteractionEnabled = true
      vampire.image = UIImage(named: "vampire")
      vampire.tag = 27
    }
  }
  @IBOutlet weak var rabbit: UIImageView! {
    didSet {
      rabbit.isUserInteractionEnabled = true
      rabbit.image = UIImage(named: "rabbit")
      rabbit.tag = 28
    }
  }
  @IBOutlet weak var moon: UIImageView! {
    didSet {
      moon.isUserInteractionEnabled = true
      moon.image = UIImage(named: "moon")
      moon.tag = 29
    }
  }
  @IBOutlet weak var bite: UIImageView! {
    didSet {
      bite.isUserInteractionEnabled = true
      bite.image = UIImage(named: "bite")
      bite.tag = 30
    }
  }
  @IBOutlet weak var mermaid: UIImageView! {
    didSet {
      mermaid.isUserInteractionEnabled = true
      mermaid.image = UIImage(named: "mermaid")
      mermaid.tag = 31
    }
  }
  @IBOutlet weak var takemikazuchi: UIImageView! {
    didSet {
      takemikazuchi.isUserInteractionEnabled = true
      takemikazuchi.image = UIImage(named: "takemikazuchi")
      takemikazuchi.tag = 32
    }
  }
  @IBOutlet weak var flameangel: UIImageView! {
    didSet {
      flameangel.isUserInteractionEnabled = true
      flameangel.image = UIImage(named: "flameangel")
      flameangel.tag = 33
    }
  }
  @IBOutlet weak var whale: UIImageView! {
    didSet {
      whale.isUserInteractionEnabled = true
      whale.image = UIImage(named: "whale")
      whale.tag = 34
    }
  }
  @IBOutlet weak var fairy: UIImageView! {
    didSet {
      fairy.isUserInteractionEnabled = true
      fairy.image = UIImage(named: "fairy")
      fairy.tag = 35
    }
  }
  @IBOutlet weak var spiritknight: UIImageView! {
    didSet {
      spiritknight.isUserInteractionEnabled = true
      spiritknight.image = UIImage(named: "spiritknight")
      spiritknight.tag = 36
    }
  }
  @IBOutlet weak var lion: UIImageView! {
    didSet {
      lion.isUserInteractionEnabled = true
      lion.image = UIImage(named: "lion")
      lion.tag = 37
    }
  }
  @IBOutlet weak var fish: UIImageView! {
    didSet {
      fish.isUserInteractionEnabled = true
      fish.image = UIImage(named: "fish")
      fish.tag = 38
    }
  }
  @IBOutlet weak var xingtian: UIImageView! {
    didSet {
      xingtian.isUserInteractionEnabled = true
      xingtian.image = UIImage(named: "xingtian")
      xingtian.tag = 39
    }
  }
  @IBOutlet weak var pig: UIImageView! {
    didSet {
      pig.isUserInteractionEnabled = true
      pig.image = UIImage(named: "pig")
      pig.tag = 40
    }
  }
  @IBOutlet weak var apostle: UIImageView! {
    didSet {
      apostle.isUserInteractionEnabled = true
      apostle.image = UIImage(named: "apostle")
      apostle.tag = 41
    }
  }
  @IBOutlet weak var aurora: UIImageView! {
    didSet {
      aurora.isUserInteractionEnabled = true
      aurora.image = UIImage(named: "aurora")
      aurora.tag = 42
    }
  }
  @IBOutlet weak var bat: UIImageView! {
    didSet {
      bat.isUserInteractionEnabled = true
      bat.image = UIImage(named: "bat")
      bat.tag = 43
    }
  }
  @IBOutlet weak var dragonprincess: UIImageView! {
    didSet {
      dragonprincess.isUserInteractionEnabled = true
      dragonprincess.image = UIImage(named: "dragonprincess")
      dragonprincess.tag = 44
    }
  }
  @IBOutlet weak var sage: UIImageView! {
    didSet {
      sage.isUserInteractionEnabled = true
      sage.image = UIImage(named: "sage")
      sage.tag = 45
    }
  }
  @IBOutlet weak var netherhog: UIImageView! {
    didSet {
      netherhog.isUserInteractionEnabled = true
      netherhog.image = UIImage(named: "netherhog")
      netherhog.tag = 46
    }
  }
  @IBOutlet weak var baseball: UIImageView! {
    didSet {
      baseball.isUserInteractionEnabled = true
      baseball.image = UIImage(named: "baseball")
      baseball.tag = 47
    }
  }
  
  // How to pass data through Delegate stp2
  // This delegate variable is responsible to keep a track of the function and use that function to send data to destinationVC.
  // optional because as of now we haven’t set it up. We just initialized it with nil.
  var delegate: DataTransferToMainVCDelegate? = nil
  
  // need to keep tag of selected Spirit
  var selectedSpiritTag: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("SpiritBatlleVC: default value of selectedSpiritTag is \(selectedSpiritTag)")
    
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
    let tapGestureRecognizer32 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer33 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer34 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer35 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer36 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer37 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer38 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer39 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer40 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer41 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer42 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer43 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer44 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer45 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer46 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    let tapGestureRecognizer47 = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
    
    // Add Tap Gesture Recognizer
    littleangel.addGestureRecognizer(tapGestureRecognizer1)
    griffin.addGestureRecognizer(tapGestureRecognizer2)
    imp.addGestureRecognizer(tapGestureRecognizer3)
    wisp.addGestureRecognizer(tapGestureRecognizer4)
    anima.addGestureRecognizer(tapGestureRecognizer5)
    baffet.addGestureRecognizer(tapGestureRecognizer6)
    centaur.addGestureRecognizer(tapGestureRecognizer7)
    angel.addGestureRecognizer(tapGestureRecognizer8)
    demon.addGestureRecognizer(tapGestureRecognizer9)
    dragonkid.addGestureRecognizer(tapGestureRecognizer10)
    glutton.addGestureRecognizer(tapGestureRecognizer11)
    treant.addGestureRecognizer(tapGestureRecognizer12)
    bamboo.addGestureRecognizer(tapGestureRecognizer13)
    god.addGestureRecognizer(tapGestureRecognizer14)
    harpy.addGestureRecognizer(tapGestureRecognizer15)
    frostessence.addGestureRecognizer(tapGestureRecognizer16)
    sunscorch.addGestureRecognizer(tapGestureRecognizer17)
    razor.addGestureRecognizer(tapGestureRecognizer18)
    sandGolem.addGestureRecognizer(tapGestureRecognizer19)
    heavenlyMaiden.addGestureRecognizer(tapGestureRecognizer20)
    lampGenie.addGestureRecognizer(tapGestureRecognizer21)
    azure.addGestureRecognizer(tapGestureRecognizer22)
    flaming.addGestureRecognizer(tapGestureRecognizer23)
    inukami.addGestureRecognizer(tapGestureRecognizer24)
    shadow.addGestureRecognizer(tapGestureRecognizer25)
    titan.addGestureRecognizer(tapGestureRecognizer26)
    vampire.addGestureRecognizer(tapGestureRecognizer27)
    rabbit.addGestureRecognizer(tapGestureRecognizer28)
    moon.addGestureRecognizer(tapGestureRecognizer29)
    bite.addGestureRecognizer(tapGestureRecognizer30)
    mermaid.addGestureRecognizer(tapGestureRecognizer31)
    takemikazuchi.addGestureRecognizer(tapGestureRecognizer32)
    flameangel.addGestureRecognizer(tapGestureRecognizer33)
    whale.addGestureRecognizer(tapGestureRecognizer34)
    fairy.addGestureRecognizer(tapGestureRecognizer35)
    spiritknight.addGestureRecognizer(tapGestureRecognizer36)
    lion.addGestureRecognizer(tapGestureRecognizer37)
    fish.addGestureRecognizer(tapGestureRecognizer38)
    xingtian.addGestureRecognizer(tapGestureRecognizer39)
    pig.addGestureRecognizer(tapGestureRecognizer40)
    apostle.addGestureRecognizer(tapGestureRecognizer41)
    aurora.addGestureRecognizer(tapGestureRecognizer42)
    bat.addGestureRecognizer(tapGestureRecognizer43)
    dragonprincess.addGestureRecognizer(tapGestureRecognizer44)
    sage.addGestureRecognizer(tapGestureRecognizer45)
    netherhog.addGestureRecognizer(tapGestureRecognizer46)
    baseball.addGestureRecognizer(tapGestureRecognizer47)
  }
  
  // what will happen if Spirit is selected
  @objc func didTapImageView(_ sender: UITapGestureRecognizer) {
    print("SpiritBatlleVC: selected spirit is ", sender.view!.tag)
    
    // saving tag of selected Spirit, to pass it further
    selectedSpiritTag = sender.view!.tag
    print("SpiritBatlleVC: new value of selectedSpiritTag is \(selectedSpiritTag)")
    
    // Check if the delegate is not nil. If the delegate is nil then that means its not yet authorized to use this function to send data. Hence, its very important to first check nil for the delegate variable.
    // Check if there is some data selected(entered) from the spirit tag (in the TextField). If there is no data selected(entered) then it doesn’t make sense to perform any action of sending data.
    if self.delegate != nil && self.selectedSpiritTag != nil {
      
      // preparing data to send to destinationVC
      let dataToBeSent = self.selectedSpiritTag
      
      // pass the data to our delegate which in turn uses the function to pass it to another view controller
      self.delegate?.dataToTransfer(tag: dataToBeSent)
      
      // dismissing current VC to previous in stack
      navigationController?.popViewController(animated: true)
    }
  }
  
  // pass the data to destinationVC
  func dataToTransfer(tag: Int) {
    print("ready data to transfer: \(tag)")
  }
}


