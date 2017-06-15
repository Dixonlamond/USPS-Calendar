//
//  ViewController.swift
//  USPS Calendar
//
//  Created by Lamond Dixon on 4/30/17.
//  Copyright © 2017 Lamond Dixon. All rights reserved.
//

import UIKit
import JTAppleCalendar

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{

  let formatter = DateFormatter()
  
  @IBOutlet weak var colorViewPicker: UIPickerView!
  
  let colors = ["Green", "Blue", "Yellow", "Black"]
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int
  {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
  {
    return colors[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
  {
    return colors.count
  }
  
//  use this code down below to try to connect to the calender when colors are selected.
//  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
//  {
//    <#code#>
//  }
//  
  override func viewDidLoad()
  {
    // Do any additional setup after loading the view, typically from a nib.
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  extension ViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource
  {
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters
    {
      formatter.dateFormat = "yyy MM dd"
      formatter.timeZone = Calendar.current.timeZone
      formatter.locale = Calendar.current.locale
      
      let startDate = formatter.date (from:"2017 01 01")
      let endDate = formatter.date(from: "2017 12 31")
      
      
      let parameters = ConfigurationParameters(startDate: <#T##Date#>, endDate: <#T##Date#>)
      return parameters
    }
  }
  
}

