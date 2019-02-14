//
//  ViewController.swift
//  vaslAppSdk
//
//  Created by shatergholi6@gmail.com on 01/16/2019.
//  Copyright (c) 2019 shatergholi6@gmail.com. All rights reserved.
//

import UIKit
import vaslAppSdk

class ViewController: UIViewController {

    let appid                      = "c3bdf6c5-508f-48ae-9af4-243a24072e31"
    let clientId                   = "c3bdf6c5-508f-48ae-9af4-243a24072e31"
    let clientSecret               = "LnDbEo3yDDcswKMC3h4H"
    let username                   = "android-XoaM8ODAYVcKnB16ob8N"
    let password                   = "DOI0qOIa0KT6ViYmS1k6"
    
    
    var vmbas : VaslSdk!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        vmbas = VaslSdk.init(appId: appid,
                            baseUrl: "https://sandbox.vaslapp.com",
                            clientId: clientId,
                            clientSecret: clientSecret,
                            username: username,
                            password: password)
        
        vmbas.SubscriberService().loginByUsername(username: "09123187421", password: "123456") { (login, error) in
            print("subscriberId : \(String(describing: login?.loginInfo.subscriberID))")
            print("sessionId    : \(String(describing: login?.loginInfo.sessionID))")
            print("error        : \(String(describing: error))")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

