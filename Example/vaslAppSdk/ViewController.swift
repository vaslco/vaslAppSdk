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

//    let appid                      = "05e1d1a5-0996-4ddf-aae9-b75684d3e5ac"
//    let clientId                   = "05e1d1a5-0996-4ddf-aae9-b75684d3e5ac"
//    let clientSecret               = "sLno6YNtO7Np5H1c2f9G"
//    let username                   = "ios-HhwEoPYR7HW1yJ6DkKo9"
//    let password                   = "g8tlaUJba0UYUJjPZp5Z"
    
    //41accbbe-6813-41c6-8e00-105647ca6fc3
    
////    //sandbox
    let appid                      = "c3bdf6c5-508f-48ae-9af4-243a24072e31"
    let clientId                   = "c3bdf6c5-508f-48ae-9af4-243a24072e31"
    let clientSecret               = "LnDbEo3yDDcswKMC3h4H"
    let username                   = "ios-42INKrpAH3stIaYbGTGJ"
    let password                   = "fH0DAMfU5QXtoz7zTteJ"
////http://sandbox.vaslapp.com
    //http://server.vaslapp.hambazisho.ir
    
//    let appid                      = "b1355735-e177-4a9c-b1b6-50affe5f5151"
//    let clientId                   = "b1355735-e177-4a9c-b1b6-50affe5f5151"
//    let clientSecret               = "vMdRyEsSrDtdGGOzajVa"
//    let username                   = "ios-iDXKEvKMXQM0et0sINuE"
//    let password                   = "s1THAzWGgVN5JGYcJdzq"
   
    var vmbas : VaslSdk!
    
    
    var generator = NonceGenerator("FPLFJ0pCx6")


    
    let session = "39a74eec8aa2eca188e1e9a50be886136d174248"
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        if let generatedData = generator.generateSignature() as String?{
//
//            debugPrint(generatedData)
//        }

        
        
        vmbas = VaslSdk.init(appId: appid,
                             baseUrl: "http://sandbox.vaslapp.com",
                            clientId: clientId,
                            clientSecret: clientSecret,
                            username: username,
                            password: password, nounce: "FPLFJ0pCx6")
        
       let newcontent = ["salam"]
        
//
        vmbas.KalingaServices()?.editContent(contentId: "5e5f9b8e5be32a00092b8bed", headline: "test", banner: "", summery: "test", content: newcontent, status: "PUBLISHED", tags: [], catIds: [], lat: "35.69859313964844", lng: "51.33749008178711", propertyValue: [], language: "", type: "", sessionId: session, completion: { (data, error) in
            if error == nil {
                debugPrint(data!)
            }else{
                debugPrint(error!)
            }
        })
        
//        vmbas.DynamicTableEndPointService()?.endpointFind(tableName: "allleagues", find: "{}", projection: "{}", sort: "{}", skip: "", limit: "", sessionId: session, completion: { (data, error) in
//            if error == nil{
//                debugPrint(data!)
//                if let item = data?.getDictionary() {
//                    debugPrint(item)
//                }
//            }else{
//                debugPrint(error!)
//            }
//        })

        




    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}

