//
//  ViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 09.12.2020.
//

import UIKit
import WebKit
import MessageUI

class MainViewController: UIViewController, WKNavigationDelegate, MFMailComposeViewControllerDelegate {
        
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = K.appName
        
        // WebView
        let url = URL(string: "https://facebook.com/MUORIGIN2SEA/")
        webView.load(URLRequest(url: url!))
        webView.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.1456644535, blue: 0.09483704716, alpha: 1)
        webView.isOpaque = false
        webView.allowsBackForwardNavigationGestures = true
        
    }
    
    // MENU BUTTON - CRAFT
    @IBAction func menuCraft(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: K.craftSegue, sender: self)
    }
    
    // MENU BUTTON - SPIRIT
    @IBAction func menuSpirit(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: K.spiritSegue, sender: self)
    }
    
    // MENU BUTTON - Accessory
    @IBAction func menuAccessory(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: K.accessorySegue, sender: self)
    }
}
