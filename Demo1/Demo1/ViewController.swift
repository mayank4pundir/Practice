//
//  ViewController.swift
//  Demo1
//
//  Created by DevRonins on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .orange
        
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .compact
        
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    @IBAction func didTapButton() {
        showAlert()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Alert Title", message: "This is my custom alert.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in
            print("Dismiss Tapped...")
        }))
        
        present(alert, animated: true)
    }
    
//******************* Segement ****************************
    @IBOutlet var segment: UISegmentedControl!


    @IBAction func mySegmentChange(_ sender: Any) {
        
        if (sender as AnyObject).selectedSegmentIndex == 0 {
            view.backgroundColor = .white
            myLabel.textColor = .black
            myTextField.textColor = .black
            myButton.backgroundColor = .systemGreen
            myButton.titleLabel?.textColor = .black
        }
        
        if (sender as AnyObject).selectedSegmentIndex == 1 {
            view.backgroundColor = .black
            myLabel.textColor = .white
            myTextField.textColor = .white
            myButton.backgroundColor = .lightGray
            myButton.titleLabel?.textColor = .black
        }
        
        if (sender as AnyObject).selectedSegmentIndex == 2 {
            view.backgroundColor = .systemOrange
            myLabel.textColor = .systemBlue
            myTextField.textColor = .systemBlue
            myButton.backgroundColor = .white
            myButton.titleLabel?.textColor = .black
        }
        
        if (sender as AnyObject).selectedSegmentIndex == 3 {
            view.backgroundColor = .systemGreen
            myLabel.textColor = .black
            myTextField.textColor = .black
            myButton.backgroundColor = .black
            myButton.titleLabel?.textColor = .white
        }
        
        if (sender as AnyObject).selectedSegmentIndex == 4 {
            view.backgroundColor = .systemYellow
            myLabel.textColor = .systemRed
            myTextField.textColor = .systemRed
            myButton.backgroundColor = .black
            myButton.titleLabel?.textColor = .white
        }
    }
    
//****************** Switch ***********************
    
    
    @IBAction func mySwitchChange(_ sender: UISwitch) {
        
        if sender.isOn {
            view.backgroundColor = .black
            myLabel.textColor = .white
            myTextField.textColor = .white
            myButton.backgroundColor = .lightGray
            myButton.titleLabel?.textColor = .black
        }else{
            view.backgroundColor = .white
            myLabel.textColor = .black
            myTextField.textColor = .black
            myButton.backgroundColor = .systemGreen
            myButton.titleLabel?.textColor = .black
        }
    }

//################  Date Picker ######################
    
    @IBOutlet var labelDate: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func datePickerSegment(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            datePicker.preferredDatePickerStyle = .compact
            
        case 1:
            datePicker.preferredDatePickerStyle = .wheels
            
        case 2:
            datePicker.preferredDatePickerStyle = .inline
            
        default:
            break
        }
        
    }
    
    @objc
    func dateSelected() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        let date = dateFormatter.string(from: datePicker.date)
        labelDate.text = date
    }
    
}

