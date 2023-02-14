//
//  SunViewController.swift
//  SolarSystem
//
//  Created by Cassandra Brown on 2/13/23.
//

import UIKit

class SunViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var distanceSlider: UISlider!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var lightSwitch: UISwitch!
    @IBOutlet weak var infoTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider)
    {
        distanceLabel.text = String(sender.value)
    }
    @IBAction func lightSwitchedToogled(_ sender: UISwitch) {
        if lightSwitch.isOn {
            ImageView.isHidden = false
            view.backgroundColor = .systemYellow
            lightSwitch.backgroundColor = .clear
            distanceSlider.isHidden = false
            infoTextView.isHidden = false
            ImageView.backgroundColor = .clear
            lightSwitch.thumbTintColor = .white
         
        } else {
            view.backgroundColor = .black
            ImageView.isHidden = true
            distanceSlider.isHidden = true
            infoTextView.isHidden = true
            lightSwitch.thumbTintColor = .systemYellow
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
