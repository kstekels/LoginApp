//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by karlis.stekels on 19/02/2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    let userDefaults = UserDefaults.standard
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let username = userDefaults.string(forKey: "username"), let id = userDefaults.string(forKey: "id") {
            welcomeLabel.text = "Welcome, \(username), with id \(id)"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closeButtonTapped(_ sender: Any) {
        userDefaults.removeObject(forKey: "username")
        userDefaults.removeObject(forKey: "id")
        userDefaults.synchronize()
        dismiss(animated: true, completion: nil)
    }
    
}
