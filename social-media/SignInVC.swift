//
//  ViewController.swift
//  social-media
//
//  Created by Peter Rule on 06/09/2016.
//  Copyright © 2016 Peter Rule. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnTapped(_ sender: AnyObject) {
        
        let faceBookLogin = FBSDKLoginManager()
        faceBookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("PETE: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("PETE: User cancelled Facebook authentification")
                
            } else {
                print("PETE: Successfully authenticated with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.fireBaseAuth(credential)
            }
        }
    }
    
    func fireBaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("PETE: unable to authenticate with Firebase - \(error)")
            } else {
                print("PETE: Successfully authenticated with Firbase")
            }
        })
    }
}


