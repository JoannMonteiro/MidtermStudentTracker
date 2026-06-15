//
//  ViewController.swift
//  MidtermIosJoann
//
//  Created by Joann Monteiro on 2026-06-15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var courseNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImageView.alpha = 0
            titleLabel.alpha = 0
            subtitleLabel.alpha = 0
        studentNameLabel.alpha = 0
        courseNameLabel.alpha = 0

            logoImageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

            // Animate everything in
            UIView.animate(withDuration: 1.75) {
                self.logoImageView.alpha = 1
                self.logoImageView.transform = CGAffineTransform.identity
                self.titleLabel.alpha = 1
                self.subtitleLabel.alpha = 1
                self.studentNameLabel.alpha = 1
                self.courseNameLabel.alpha = 1
            }
    }
    @IBAction func goToProfilePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showProfile", sender: self)
    }

}

