//
//  SecondViewController.swift
//  ResuableViewDemo
//
//  Created by Vijay's Braintech on 28/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var reusableView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigation()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func configureNavigation() {
        let navigationBar = Bundle.main.loadNibNamed("ResuableView", owner: self, options: nil)?.first as? ResuableView
        if let navigationBar = navigationBar {
            navigationBar.label.text = "Profile"
            let button = navigationBar.backButton
            button?.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
        navigationBar?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        navigationBar?.frame = self.reusableView.bounds
        self.reusableView.addSubview(navigationBar!)
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
       }
}
