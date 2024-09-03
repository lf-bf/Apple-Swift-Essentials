//
//  ViewController.swift
//  light
//
//  Created by Luiz Fernando Brasão on 21/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        lightOn.toggle()
        if lightOn{
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }else{
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        updateUI()
        
    }
    
}

