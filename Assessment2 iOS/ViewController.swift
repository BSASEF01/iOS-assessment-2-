//
//  ViewController.swift
//  Assessment2 iOS
//
//  Created by Bersabeh Asefa on 4/14/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class mockup {
        var fristName: String
        var lastName: String
        var email: String
        
        init(fristName: String, lastName: String, email: String) {
            self.fristName = fristName
            self.lastName = lastName
            self.email = email
        }
        
    }
    
    
    @IBOutlet weak var fristName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func Button1(_ sender: Any) {
        
        var person = mockup(fristName:  fristName.text! , lastName: lastName.text!, email: Email.text!)
     
        if fristName.text == "" || lastName.text == "" || Email.text == "" {
            let mockup = (fristname: fristName.text!,lastname : lastName.text!)
        
        let    alertController = UIAlertController(title: "Error", message: "You need to fill out all text boxes.", preferredStyle: .alert)
    let closeAction = UIAlertAction(title: "Close", style: .default, handler: nil)
    alertController.addAction(closeAction)
    self.present(alertController, animated: true, completion: nil)
    
    } else {
    
            let alertViewController = UIAlertController(title: "Great", message: "Hello \(person.fristName) \(person.lastName) Your email address is \(person.email)", preferredStyle: .alert)
    let closeAction = UIAlertAction(title: "Okey", style: .default, handler: nil)
    alertViewController.addAction(closeAction)
    self.present(alertViewController, animated: true, completion: nil)
    }
    
    
    
    
    
    }
    


}

