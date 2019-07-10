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

    let appid                      = "05e1d1a5-0996-4ddf-aae9-b75684d3e5ac"
    let clientId                   = "05e1d1a5-0996-4ddf-aae9-b75684d3e5ac"
    let clientSecret               = "sLno6YNtO7Np5H1c2f9G"
    let username                   = "ios-HhwEoPYR7HW1yJ6DkKo9"
    let password                   = "g8tlaUJba0UYUJjPZp5Z"
    

   
    var vmbas : VaslSdk!

    let datasss = Array<Dictionary<String,String>>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        vmbas = VaslSdk.init(appId: appid,
                            baseUrl: "http://hambazisho.vaslapp.com",
                            clientId: clientId,
                            clientSecret: clientSecret,
                            username: username,
                            password: password)
        let data = UIImage(named: "gimour.jpg")
        let jpegData = data?.jpegData(compressionQuality: 1)! as NSData?
        
      
        
        
        vmbas.SubscriberService()?.saveProfileInfo(nickName: "", firstName: "", lastName: "", fatherName: "", shenasnamehNo: "", deathStatus: "", picture: jpegData!, gender: "", birthDate: "", nationalId: "", data: datasss, sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
            if error == nil {
                print(data!)
                
                
            }else{
               
                print(error!)
            }
        })
        


    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}

