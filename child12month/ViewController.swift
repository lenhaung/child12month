//
//  ViewController.swift
//  child12month
//
//  Created by Lun H on 2020/3/7.
//  Copyright © 2020 Lun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var SliderOutlet: UISlider!
    @IBOutlet weak var DatePickerOutlet: UIDatePicker!
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var MonthLabel: UILabel!
    
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let Date = DatePickerOutlet.date
        let DateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: Date)
        SliderOutlet.value = Float(DateComponents.month!)
        let imageMonth = String(DateComponents.month!)
        Image.image = UIImage(named:imageMonth)
        MonthLabel.text = "２０１９年\(imageMonth)月"
    }
    
    
    @IBAction func dateSlider(_ sender: UISlider) {
        if SliderOutlet.value != 0{
            let imageString = String(Int(SliderOutlet.value))
            Image.image = UIImage(named: "\(imageString)")
            MonthLabel.text = "２０１９年\(imageString)月"
            let Date = DatePickerOutlet.date
            var DateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: Date)
            DateComponents.month =  Int(SliderOutlet.value)
        }else{
            MonthLabel.text = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

