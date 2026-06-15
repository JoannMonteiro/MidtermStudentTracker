//
//  ActivityViewController.swift
//  MidtermIosJoann
//
//  Created by Joann Monteiro on 2026-06-15.
//

import UIKit

class ActivityViewController: UIViewController {
    @IBOutlet weak var activitiesLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var activityTextField: UITextField!
    var activities = [
            "Assignment Submission",
            "Midterm Exam",
            "Project Meeting",
            "Final Presentation"
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        displayActivities()
    }
    
    func displayActivities() {

            // Iterate through activities array and build string
            var activityText = ""
            for activity in activities {
                activityText += "• \(activity)\n"
            }

            // Show activities in label
            activitiesLabel.text = activityText

            // Show total count
            totalLabel.text = "Total Activities: \(activities.count)"
        }

        // MARK: - Add Activity Button
        @IBAction func addPressed(_ sender: UIButton) {

            // Check if text field is empty
            if activityTextField.text == "" {

                let alert = UIAlertController(
                    title: "Missing Activity",
                    message: "Please enter an activity name before adding.",
                    preferredStyle: .alert
                )
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true)
                return
            }

            // Append new activity to array
            activities.append(activityTextField.text!)

            // Clear text field
            activityTextField.text = ""

            // Dismiss keyboard
            view.endEditing(true)

            // Update display
            displayActivities()

            // MARK: Animation - Fade in when activity is added
            activitiesLabel.alpha = 0
            UIView.animate(withDuration: 0.8) {
                self.activitiesLabel.alpha = 1
            }
        }

        // MARK: - Remove Activity Button
        @IBAction func removePressed(_ sender: UIButton) {

            // Check if array is empty
            if activities.isEmpty {

                let alert = UIAlertController(
                    title: "No Activities",
                    message: "There are no activities left to remove.",
                    preferredStyle: .alert
                )
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true)
                return
            }

            // Remove last activity from array
            activities.removeLast()

            // Update display
            displayActivities()
        }

}
