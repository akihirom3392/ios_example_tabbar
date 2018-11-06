//
//  FirstViewController.swift
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pushButtonPressed(_ sender: Any) {
        let third = self.storyboard!.instantiateViewController(withIdentifier: "ThirdViewController")
        third.hidesBottomBarWhenPushed = true
        self.navigationController!.pushViewController(third, animated: true)
    }

    @IBAction func modalButtonPressed(_ sender: Any) {
        let third = self.storyboard!.instantiateViewController(withIdentifier: "ThirdViewController")
        third.hidesBottomBarWhenPushed = true
        let nav = UINavigationController(rootViewController: third)
        self.present(nav, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                nav.dismiss(animated: true, completion: nil)
            })
        }
    }
}

