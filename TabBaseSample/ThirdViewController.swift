//
//  ThirdViewController.swift
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!

    @IBAction func dismissButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        dismissButton.isHidden = (self.presentingViewController == nil)
    }
}
