//
//  ViewController.swift
//  SolarSystem
//
//  Created by Cassandra Brown on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var quoteTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyboardReturnKeyTrigger(_ sender: UITextField){
        if let text = sender.text{
            nameLabel.text="Welcome, \(text)"
        }
    }
    

}

