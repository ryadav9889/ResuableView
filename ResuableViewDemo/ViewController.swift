//
//  ViewController.swift
//  ResuableViewDemo
//
//  Created by Vijay's Braintech on 28/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var reusableView: ResuableView!
   
    
    //MARK: - PROPERTIES
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigation()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func configureNavigation() {
        let navigationBar = Bundle.main.loadNibNamed("ResuableView", owner: self, options: nil)?.first as? ResuableView
        if let navigationBar = navigationBar {
            navigationBar.backButton.isHidden = true
            navigationBar.bell.isHidden = true
            
        }
        navigationBar?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        navigationBar?.frame = self.reusableView.bounds
        self.reusableView.addSubview(navigationBar!)
    }
    
    
    @IBAction func firsButtonAction(_ sender: Any) {
        
        let nextVC  = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(nextVC, animated: false)
    }
    
    @IBAction func SecondButtonAction(_ sender: Any) {
        let nextVC  = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(nextVC, animated: false)
    }
    
    
}
