//
//  ChildViewController.swift
//  DelegationWithCombine
//
//  Created by Umer Khan on 03/10/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit
import Combine

class ChildViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    
    // Publisher
    let childMessagePublisher = PassthroughSubject<String, Never>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismissSelfButtonTapped(_ sender: UIButton) {
        
        // Unwrap message
        guard let message = messageTextField.text else { return }
        
        // Send to Subscriber
        childMessagePublisher.send(message)
        
        // Dismiss self
        self.dismiss(animated: true)
    }
}
