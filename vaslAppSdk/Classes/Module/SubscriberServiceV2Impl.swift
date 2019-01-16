import Foundation

protocol SubscriberServiceV2 {

    func registerOperatorSubscriber(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void)

    func validateOperatorSubscriber(activationKey: String, mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void)

    func sendActivateCodeLater(username: String, mobile: String, email: String, activatedType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword?,String?) -> Void)

    func activateLater(username: String, activationKey: String, activatedType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void)


}


public class SubscriberServiceV2Impl  : SubscriberServiceV2 {


    public func registerOperatorSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void) {
        registerOperatorSubscriber(mobile: mobile, completion: completion,force: true)
    }
    
    private func registerOperatorSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/operators/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.registerOperatorSubscriber(mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func validateOperatorSubscriber(activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void) {
        validateOperatorSubscriber(activationKey: activationKey, mobile: mobile, completion: completion,force: true)
    }
    
    private func validateOperatorSubscriber(activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(activationKey            , forKey: "activationKey")
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/operators/validate", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validateOperatorSubscriber(activationKey: activationKey, mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func sendActivateCodeLater(username: String, mobile: String, email: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword?,String?) -> Void) {
        sendActivateCodeLater(username: username, mobile: mobile, email: email, activatedType: activatedType, completion: completion,force: true)
    }
    
    private func sendActivateCodeLater(username: String, mobile: String, email: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(activatedType            , forKey: "activatedType")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/send/active/code/later", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendActivateCodeLater(username: username, mobile: mobile, email: email, activatedType: activatedType, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func activateLater(username: String, activationKey: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void) {
        activateLater(username: username, activationKey: activationKey, activatedType: activatedType, completion: completion,force: true)
    }
    
    private func activateLater(username: String, activationKey: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(activationKey            , forKey: "activationKey")
                    params.updateValue(activatedType            , forKey: "activatedType")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/active/later", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.activateLater(username: username, activationKey: activationKey, activatedType: activatedType, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


}
