//
//  ParentViewController.swift
//  DelegationWithCombine
//
//  Created by Umer Khan on 03/10/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit
import Combine

class ParentViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goToChildButtonTapped(_ sender: UIButton) {
        
        let child = ChildViewController()
        
        child.childMessagePublisher.handleEvents(receiveOutput: { [unowned self] message in
            self.messageLabel.text = message
        })
            .sink { _ in }
            .store(in: &subscriptions)
        
        
        self.present(child, animated: true)
    }
}
