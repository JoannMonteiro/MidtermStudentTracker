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
            "iOS Development",
            "Java Programming",
            "Web Development",
            "Database Systems"
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
