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
//    let appid                      = "c3bdf6c5-508f-48ae-9af4-243a24072e31"
//    let clientId                   = "c3bdf6c5-508f-48ae-9af4-243a24072e31"
//    let clientSecret               = "LnDbEo3yDDcswKMC3h4H"
//    let username                   = "ios-42INKrpAH3stIaYbGTGJ"
//    let password                   = "fH0DAMfU5QXtoz7zTteJ"
////http://sandbox.vaslapp.com
    //http://server.vaslapp.hambazisho.ir
    
    let appid                      = "b1355735-e177-4a9c-b1b6-50affe5f5151"
    let clientId                   = "b1355735-e177-4a9c-b1b6-50affe5f5151"
    let clientSecret               = "vMdRyEsSrDtdGGOzajVa"
    let username                   = "ios-iDXKEvKMXQM0et0sINuE"
    let password                   = "s1THAzWGgVN5JGYcJdzq"
   
    var vmbas : VaslSdk!
    
    
    var generator = NonceGenerator("FPLFJ0pCx6")


    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        if let generatedData = generator.generateSignature() as String?{
//
//            debugPrint(generatedData)
//        }

        
        
        vmbas = VaslSdk.init(appId: appid,
                             baseUrl: "http://vaslapp.gaminoapp.ir",
                            clientId: clientId,
                            clientSecret: clientSecret,
                            username: username,
                            password: password, nounce: "FPLFJ0pCx6")
        
        
//        vmbas.SubscriberService()?.registerOperatorSubscriber(mobile: "09126850451", completion: { (data, error) in
//            if error == nil{
//                debugPrint(data)
//            }else{
//                debugPrint(error!)
//            }
//        })
        
        

        
        

  
        
//        vmbas.HambaziService()?.pageGet(key: "PAGE_DETAILS", catId: "5d1352a82f59d8000941fd27", subscriberId: "", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//                for item in data!.data{
//                    for data in item.items{
//                        debugPrint(data.hasChild_p)
//                    }
//                }
//
//            }else{
//                print(error!)
//            }
//        })
        
        
        
//
        
        

        
//        vmbas.SubscriberService()?.registerOperatorSubscriber(mobile: "09362266252", completion: { (data, error) in
//            if error == nil{
//
//                debugPrint("it's working fucking awesome bitch ")
//
//            }else{
//                print(error!)
//            }
//        })
        
        
        
        
        
        
        
//        let obj = [String:Any]()
//
//        vmbas.dynamicTableEndPointService()?.endpointFind(tableName: "tbl_info", find: obj, projection: obj, sort: obj, skip: Int(), limit: Int(), sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//
//            }else{
//                print(error!)
//            }
//        })
//
//        let obj = [String:Any]()
//        do{
//            let data = try JSONSerialization.data(withJSONObject: obj, options: [])
////            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
//            let converted = String(data: data, encoding: .utf8)
//            vmbas.dynamicTableEndPointService()?.endpointFind(tableName: "tbl_info", find:converted! , projection: converted!, sort: converted!, skip:"", limit: "", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//                if error == nil{
//                    debugPrint(data!)
//                }else{
//                    print(error!)
//                }
//            })
//
//        }catch{
//
//        }
        

        
        

        
//        vmbas.HambaziService()?.videoList(page: "1", sort: "", order: "", subscriberType: "", catId: "5d0a2db52589910009612b82", hambaziStatus: "", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//                for item in data!.data{
//                    debugPrint(item)
//                }
//               debugPrint("success")
//            }else{
//                print(error!)
//            }
//        })
        
//
//        vmbas.dynamicTableEndPointService()?.endpointFind(tableName: "", find: "{}", projection: "{}", sort: "", skip: "", limit: "", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil {
//
//            }else{
//                print(error!)
//            }
//        })
        
//        vmbas.billingGlobalService()?.getUserAccount(sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//                debugPrint(data!)
//            }else{
//                print(error!)
//            }
//        })
        
//        vmbas.billingGlobalService()?.increaseBalance(amount: "20000", bankCode: "1", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//
//                debugPrint(data!)
//
//            }else{
//                print(error!)
//            }
//        })
//
//
//        let path = Bundle.main.path(forResource: "test", ofType: "mp4")!
//
//        let pathURL = URL(fileURLWithPath: path)
//
//        let video = NSData(contentsOf: pathURL)
//
//        vmbas.HambaziService()?.videoCreate(multipartFile: video!, title: "test ios", description: "test for ios", actorVideoId: "5d138b5618ed19000924af6d", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//
//                debugPrint(data!)
//                print("success video upload")
//
//
//
//            }else{
//                print(error!)
//            }
//        })
        
//        
//        vmbas.HambaziService()?.pageGet(key: "PAGE_SUBSCRIBER_PROFILE", catId: "", subscriberId: "5cfc9f6529f7d500098049e6", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//                for item in data!.data{
//                    print(item.items)
//
//                }
//
//            }else{
//                print(error!)
//            }
//        })
        
//        vmbas.HambaziService()?.subscriberUserProfile(subscriberId: "5d0a1f2d9ee7e700099c5f70", completion: { (data, error) in
//            if error == nil{
//                debugPrint(data?.data)
//            }else{
//                print(error!)
//            }
//        })
//        vmbas.HambaziService()?.myVideoList(sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", artistId: "", page: String(1), sort: "INSERT_TIME", order: "DESC", hambaziStatus: "", completion: { (data, error) in
//            if error == nil{
//                for item in data!.data{
//                    print(item)
//                }
//            }else{
//                print(error!)
//            }
//        })
//

//
//        let url = Bundle.main.path(forResource: "test", ofType: "mp4")!
//
//        let videoUrl = URL(string: url)!
//
//        let videData = NSData(contentsOf: videoUrl)
//
//        vmbas.HambaziService()?.videoCreate(multipartFile: videData, title: "test", description: "test ios sdk", actorVideoId: "5d138b5618ed19000924af6d", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil {
//
//                let cont = self.storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
//                self.navigationController?.pushViewController(cont, animated: true)
//
//            }else{
//                print(error!)
//            }
//        })
        
        
        
////
//        let image = UIImage(named: "gimour")
//        var Extradata = Array<Dictionary<String,String>>()
//        let jpegData = image?.jpegData(compressionQuality: 1)! as NSData?
//
//        var dic = Dictionary<String,String>()
//        dic.updateValue("زاویه", forKey: "city")
//        Extradata.append(dic)
////
////
//        vmbas.SubscriberService()?.saveProfileInfo(nickName: "sia", firstName: "siamak", lastName: "rostami", fatherName: "", shenasnamehNo: "111111", deathStatus: "", picture: NSData(), gender: "MALE", birthDate: "1374-1-1", nationalId: "", data: Extradata, sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//              debugPrint("success update profile")
//            }else{
//                print(error!)
//            }
//        })
       
//        vmbas.supportService()?.createThreadConversation(threadId: "5d04da903680e320f81ca3b4", message: "salam", attachment: NSData(), sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil {
//                print("success creating thread")
////                let controller = self.storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
////                self.navigationController?.pushViewController(controller, animated: true)
//            }else{
//                print(error!)
//            }
//
//
//        })

        
        

//        let jpegData = NSData()
//        var Extradata = Array<Dictionary<String,String>>()
//        var dic = Dictionary<String,String>()
//        dic.updateValue("tehran", forKey: "city")
//        Extradata.append(dic)
//
//        vmbas.SubscriberService()?.saveProfileInfo(nickName: "sia" , firstName: "siamak", lastName: "rostami" , fatherName: "", shenasnamehNo: "123456789", deathStatus: "", picture: jpegData , gender: "MALE" , birthDate:"1374-1-1", nationalId: "", data: Extradata, sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//
//            if error == nil{
//
//                print(data!)
//
//
//            }else{
//               print(error!)
//            }
//        })

        

        
////
//        enum key : String {
//            case
//            KEY_RAISE_ACTION_PROFILE_NAME    = "KEY_RAISE_ACTION_PROFILE_NAME"
//        }
//        let type = key(rawValue: "KEY_RAISE_ACTION_PROFILE_NAME")
////
//        vmbas.gameActionServiceV1()?.raiseAction(actionKey: type!.rawValue, actionData: "{}", sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//
//                for item in data!.data{
//                    debugPrint(item)
//                }
//
//            }else{
//                print(error!)
//            }
//        })
////
//        vmbas.gameUserServiceV2()?.userStatus(sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil {
//
//                for item in (data?.data)! {
//                    debugPrint(item)
//                }
//
//            }else{
//                print(error!)
//            }
//        })
        
   
//
//
//        vmbas.SubscriberService()?.saveProfileInfo(nickName: "احمد ذوقی", firstName: "احمد", lastName: "ذوقی", fatherName: "", shenasnamehNo: "", deathStatus: "", picture: jpegData!, gender: "MALE", birthDate: "1374-1-14", nationalId: "", data: Extradata, sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil {
//                print(data!)
//
//
//            }else{
//
//                print(error!)
//            }
//        })
        
//        vmbas.gameUserServiceV2()?.userStatus(sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil{
//
//                debugPrint(data)
//
//            }else{
//                print(error!)
//            }
//        })
//
//        vmbas.SubscriberService()?.getProfileInfo(sessionId: "8b106cf6023205715031e19a3aae8ab4c7bfe7ae", completion: { (data, error) in
//            if error == nil {
//
//                debugPrint(data)
////                let datas = data?.profileInfo.data
////                for item in datas! {
////                    print(item.key)
////                    print(item.value)
////                }
////
////               let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
////                if let url = URL(string: (data?.profileInfo.picture[0].url)!){
////                    do{
////                        let image = try Data(contentsOf: url)
////                        DispatchQueue.main.async {
////                            imageView.image = UIImage(data: image)
////                        }
////
////                    }catch{
////                        print(error)
////                    }
////                self.view.addSubview(imageView)
////
////
////                }
//
//
//            }else{
//                print(error!)
//            }
//        })



    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}

