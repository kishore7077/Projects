//
//  ViewController.swift
//  DatePickerView
//
//  Created by trainee on 02/11/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {
    
    @IBOutlet weak var fromTxtFld: UITextField!
    @IBOutlet weak var toTxtFld: UITextField!
    
    let datePicker = UIDatePicker()
    var text = UITextField()
    var activeTextField=String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        fromTxtFld.delegate = self
        toTxtFld.delegate = self
        self.createDatePicker(forField: fromTxtFld)
        self.createDatePicker(forField: toTxtFld)
        
    }

   func createDatePicker(forField field : UITextField){

    // From
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClicked))
        toolbar.setItems([doneButton], animated: true)
        fromTxtFld.inputAccessoryView = toolbar
        fromTxtFld.inputView = datePicker
        
     // To
        let toolbar1 = UIToolbar()
        toolbar1.sizeToFit()
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClicked))
        toolbar1.setItems([done], animated: true)
        
        toTxtFld.inputAccessoryView = toolbar1
        datePicker.minimumDate = Date()
        toTxtFld.inputView = datePicker
        datePicker.datePickerMode = .date
        datePicker.minuteInterval = 15
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        switch textField {
        case fromTxtFld:
            datePicker.date = Date()
            activeTextField = "minimumDate"
            datePicker.tag = 0
            fromTxtFld.text = dateFormatter.string(from: datePicker.date)
            datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .allEvents)
            return true
        case toTxtFld:
            datePicker.date = Date()
            activeTextField = "maximumDate"
            datePicker.tag = 1
            toTxtFld.text = dateFormatter.string(from: datePicker.date)
            datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .allEvents)
            return true

             default:
            return true
        }
    }
    
    
   @objc func doneClicked(){

    self.view.endEditing(true)
    
    }
    
    
    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        if sender.tag == 0 {
            fromTxtFld.text = dateFormatter.string(from: sender.date)
        } else {
            toTxtFld.text = dateFormatter.string(from: sender.date)
        }
      }
    }

