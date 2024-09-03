//
//  ViewController.swift
//  Lab-BasicInteractions
//
//  Created by Luiz Fernando Brasão on 13/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textOutlet: UITextField!
    @IBOutlet var labelOutlet: UILabel!
    @IBOutlet var setButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Programatic Implementation
        setButton.addTarget(self, action: #selector(setText(_:)), for: .touchUpInside)
        clearButton.addTarget(self, action: #selector(clearText(_:)), for: .touchUpInside)
    }

    @IBAction func setText(_ sender: UIButton) {
        if let text = textOutlet.text {
                labelOutlet.text = text
            }
    }
    @IBAction func clearText(_ sender: UIButton) {
        labelOutlet.text = nil
    }
    
}

