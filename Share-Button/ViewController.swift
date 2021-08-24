//
//  ViewController.swift
//  Share-Button
//
//  Created by Macbook on 24/08/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareBtnPressed(_ sender: UIButton) {
        let text = "Shared Content goes here"
        let img = UIImage(named: "shuva")
        let activityController = UIActivityViewController(activityItems: [text,img], applicationActivities: nil)
        
        activityController.excludedActivityTypes = [.airDrop, .postToFlickr]
        self.present(activityController, animated: true)
    }
    
}

