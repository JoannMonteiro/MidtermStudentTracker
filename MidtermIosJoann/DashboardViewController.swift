//
//  DashboardViewController.swift
//  MidtermIosJoann
//
//  Created by Joann Monteiro on 2026-06-15.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBOutlet weak var coursesLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var courses = [
            "Mobile iOS App Development",
            "Advanced Enterprise Java",
            "Mobile Android App Development",
            "Advanced Database Processes",
            "Project Managament Processes",
            "Software Process Methodologies"
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        displayCourses()

    }
    

    func displayCourses() {

            var courseText = ""
            for course in courses {
                courseText += " \(course)\n"
            }

            coursesLabel.text = courseText

            totalLabel.text = "Total Courses: \(courses.count)"
        }


}
