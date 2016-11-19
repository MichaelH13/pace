//
//  ViewController.swift
//  Pace
//
//  Created by Angel Lo on 11/8/16.
//  Copyright © 2016 Angel. All rights reserved.
//
import UIKit

class HomeViewController: UIViewController {
    let clientID = "7884d212f6ef45b5b4691688644f1217"
    let callURL = "pace://returnAfterLogin"
    let tokenSwapURL = "http://localhost:1234/swap"
    let tokenRefreshServiceURL = "http://localhost:1234/refresh"
<<<<<<< HEAD

=======
    
    var session:SPTSession!
    var player:SPTAudioStreamingController?
    
>>>>>>> sdk-integration
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.hidden = true
<<<<<<< HEAD
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateAfterFirstLogin", name: "loginSuccessful", object: nil)
=======
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(HomeViewController.updateAfterFirstLogin), name: "loginSuccessful", object: nil)
>>>>>>> sdk-integration
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        //session already exists
        if let sessionObj:AnyObject = userDefaults.objectForKey("SpotifySession") {
            let sessionDataObj = sessionObj as! NSData
            
            let session = NSKeyedUnarchiver.unarchiveObjectWithData(sessionDataObj) as! SPTSession
            
            if !session.isValid() {
                SPTAuth.defaultInstance().renewSession(session, callback: { (error:NSError!, session:SPTSession!) -> Void in
                    if error == nil {
                        let sessionData = NSKeyedArchiver.archivedDataWithRootObject(session)
                        userDefaults.setObject(sessionData, forKey: "SpotifySession")
                        userDefaults.synchronize()
                        
<<<<<<< HEAD
//                        self.session = session
=======
                        self.session = session
>>>>>>> sdk-integration
                        //playUsingSession()
                    } else {
                        print("Error refreshing session")
                    }
                })
<<<<<<< HEAD
=======
            } else {
                print("session valid")
                //playingUsingSession()
>>>>>>> sdk-integration
            }
        } else {
            //session doesn't exist
            loginButton.hidden = false
        }
        
    }
    
    func updateAfterFirstLogin() {
<<<<<<< HEAD
    
=======
        
>>>>>>> sdk-integration
        loginButton.hidden = true
        
        
    }
    
<<<<<<< HEAD
=======
    
    func playUsingSession(sessionObj:SPTSession!) {
        //check if player is nil, create the player
        if player == nil {
            player = SPTAudioStreamingController()
        }
        
    }
    
>>>>>>> sdk-integration
    @IBAction func loginWithSpotify(sender: AnyObject) {
        
        //create URL to open Safari window
        let loginURL = SPTAuth.loginURLForClientId(clientID, withRedirectURL: NSURL(string: callURL), scopes: [SPTAuthStreamingScope], responseType: "token")
        
        UIApplication.sharedApplication().openURL(loginURL)
    }
<<<<<<< HEAD


=======
    
    
>>>>>>> sdk-integration
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}