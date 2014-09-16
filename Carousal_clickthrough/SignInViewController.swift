//
//  SignInViewController.swift
//  Carousal_clickthrough
//
//  Created by Vasudhara Kantroo on 9/14/14.
//  Copyright (c) 2014 Vasudhara Kantroo. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var textImage: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginForm: UIImageView!
    @IBOutlet weak var signInButtons: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    
    
    @IBAction func onBack(sender: AnyObject) {
    navigationController!.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func onClick(sender: AnyObject) {
        self.textImage.hidden = true
        self.loginForm.transform = CGAffineTransformMakeTranslation(0, -80)
        self.username.transform = CGAffineTransformMakeTranslation(0, -80)
        self.password.transform = CGAffineTransformMakeTranslation(0, -80)
        self.signInButtons.transform = CGAffineTransformMakeTranslation(0, -180)
        self.signInButton.transform = CGAffineTransformMakeTranslation(0, -180)
        
    }
    
    @IBAction func onSignIn(sender: AnyObject) {
        
        if(self.username.text=="" || self.password=="") {
            UIAlertView(title: "Oops", message: "Email & Password required to sign in!", delegate: nil, cancelButtonTitle: "OK").show()
            
        } else {
            var alert = UIAlertView(title: "Signing in...", message: "", delegate: nil, cancelButtonTitle: nil)
            alert.show()
            delay(2, closure: { () -> () in
                alert.dismissWithClickedButtonIndex(0, animated: true)
                
                if (self.username.text == "vasu" && self.password.text == "password") {
                    self.performSegueWithIdentifier("SignInSegue", sender: self)
                } else {
                    UIAlertView(title: "Sign in failed", message: "Wrong email or password!", delegate: nil, cancelButtonTitle: "OK").show()
                }
            })
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
