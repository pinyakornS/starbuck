//
//  BenefitViewController.swift
//  Starbuck
//
//  Created by darkpl2ince on 2/26/2560 BE.
//  Copyright © 2560 darkpl2ince. All rights reserved.
//

import UIKit

class BenefitViewController: UIViewController {
    
  

    @IBAction func FilterButton(_ sender: Any) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let defaultAction = UIAlertAction(title: "Active", style: .default, handler: nil)
        
        let defaultAction2 = UIAlertAction(title: "Redeemed", style: .default, handler: nil)
        
        let defaultAction3 = UIAlertAction(title: "Expired", style: .default, handler: nil)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        alertController.addAction(defaultAction2)
        alertController.addAction(defaultAction3)
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "My Benefits";
        navigationController?.navigationBar.barTintColor = UIColor(red:35/255, green: 121/255, blue: 31/255, alpha: 1)
    
         navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        navigationController?.navigationBar.tintColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
