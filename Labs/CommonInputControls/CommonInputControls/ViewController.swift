//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Luiz Fernando Brasão on 04/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var switchOutlet: UISwitch!
    @IBOutlet var sliderOutlet: UISlider!
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//      button.addTarget connects the 'button' with the function buttonTapped, but does not ensure that the IBOutlet will be connected, in this case you need manually connect the button with the IBOutlet
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: Any) {
        print("Button pressed!")
        
        if switchOutlet.isOn{
            print("The Switch is on")
        }else{
            print("The switch is off")
        }
        
        print("The slider is set to \(sliderOutlet.value)")

    }
    
    @IBAction func Switch(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch on")
        }else{
            print("Switch off")
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: view)
        print(location)
    }
    
    
}

