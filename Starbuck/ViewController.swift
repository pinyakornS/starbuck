//
//  ViewController.swift
//  Starbuck
//
//  Created by darkpl2ince on 2/26/2560 BE.
//  Copyright © 2560 darkpl2ince. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(red:35/255, green: 121/255, blue: 31/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        navigationController?.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func manageCard(_ sender: Any) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let defaultAction = UIAlertAction(title: "Refresh Balance", style: .default, handler: nil)
        
        let defaultAction2 = UIAlertAction(title: "Transaction History", style: .default){ (UIAlertAction) -> Void in
            // HERE you perform the segue to your LoginVC,
            // or do whatever else you wanna do when the user clicked "Login" :)
            // for example:
            self.performSegue(withIdentifier: "transac", sender:self)
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        alertController.addAction(defaultAction2)
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)

}


}
