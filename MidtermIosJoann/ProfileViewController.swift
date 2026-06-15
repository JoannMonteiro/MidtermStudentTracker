//
//  ProfileViewController.swift
//  MidtermIosJoann
//
//  Created by Joann Monteiro on 2026-06-15.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var studentIDLabel: UILabel!
    @IBOutlet weak var programLabel: UILabel!
    @IBOutlet weak var semesterLabel: UILabel!
    @IBOutlet weak var nameHeaderLabel: UILabel!
    @IBOutlet weak var studentIDHeaderLabel: UILabel!
    @IBOutlet weak var programHeaderLabel: UILabel!
    @IBOutlet weak var semesterHeaderLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var studentIDTextField: UITextField!
    @IBOutlet weak var programTextField: UITextField!
    @IBOutlet weak var semesterTextField: UITextField!
    
    @IBOutlet weak var editButton: UIButton!
    var editMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

                nameLabel.text = "Joann Monteiro"
                studentIDLabel.text = "991726993"
                programLabel.text = "Software Development"
                semesterLabel.text = "5"

                nameTextField.isHidden = true
                studentIDTextField.isHidden = true
                programTextField.isHidden = true
                semesterTextField.isHidden = true
    }
    
    @IBAction func editPressed(_ sender: UIButton) {

            if !editMode {
                nameLabel.isHidden = true
                studentIDLabel.isHidden = true
                programLabel.isHidden = true
                semesterLabel.isHidden = true
                nameHeaderLabel.isHidden = true
                studentIDHeaderLabel.isHidden = true
                programHeaderLabel.isHidden = true
                semesterHeaderLabel.isHidden = true
                nameTextField.isHidden = false
                studentIDTextField.isHidden = false
                programTextField.isHidden = false
                semesterTextField.isHidden = false
                nameTextField.text = nameLabel.text
                studentIDTextField.text = studentIDLabel.text
                programTextField.text = programLabel.text
                semesterTextField.text = semesterLabel.text

                editButton.setTitle("Save", for: .normal)
                editMode = true

            } else {
                if nameTextField.text == "" || studentIDTextField.text == "" ||
                   programTextField.text == "" || semesterTextField.text == "" {

                    let alert = UIAlertController(
                        title: "Missing Information",
                        message: "Please fill in all fields before saving.",
                        preferredStyle: .alert
                    )
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    present(alert, animated: true)
                    return
                }

                nameLabel.text = nameTextField.text
                studentIDLabel.text = studentIDTextField.text
                programLabel.text = programTextField.text
                semesterLabel.text = semesterTextField.text

                nameTextField.isHidden = true
                studentIDTextField.isHidden = true
                programTextField.isHidden = true
                semesterTextField.isHidden = true

                nameLabel.isHidden = false
                studentIDLabel.isHidden = false
                programLabel.isHidden = false
                semesterLabel.isHidden = false
                nameHeaderLabel.isHidden = false
                studentIDHeaderLabel.isHidden = false
                programHeaderLabel.isHidden = false
                semesterHeaderLabel.isHidden = false
                editButton.setTitle("Edit", for: .normal)
                editMode = false

                view.endEditing(true)
            }
        }

    

}
