//
//  ViewController.swift
//  GetMyAge
//
//  Created by Ahmed Abuelmagd on 1/21/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laDisplay: UILabel!
    @IBOutlet weak var DataPicker: UIDatePicker!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buGetAge(_ sender: Any) {
        let date = Date()
        let userDOB = DataPicker.date
        let calender = Calendar.current
        let component = calender.dateComponents([Calendar.Component.day], from: userDOB, to: date)
        let Years:Int = Int(component.day!/365)
        let Months:Int = (component.day! - (Years*365))/30
        let Days:Int = (component.day! - (Months*30 + Years*365))
        let Breath = component.day! * 24 * 60 * 13
        laDisplay.text = "عمرك الان هو \(Years) سنة و \(Months) شهر و \(Days) يوم"
        print(Breath)
        
       
      

        
    }
    
}

