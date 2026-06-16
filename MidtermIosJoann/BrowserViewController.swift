//
//  BrowserViewController.swift
//  MidtermIosJoann
//
//  Created by Joann Monteiro on 2026-06-15.
//

import UIKit

class BrowserViewController: UIViewController {
    @IBOutlet weak var appVersionLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var courseInfoLabel: UILabel!
    @IBOutlet weak var studentIDLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        appVersionLabel.text = "Version: 1.0"
        developerLabel.text = "Developer: Joann Monteiro"
        courseInfoLabel.text = "Course: Mobile iOS Application Development"
        studentIDLabel.text = "Student ID: 991726993"
    }
    


}
