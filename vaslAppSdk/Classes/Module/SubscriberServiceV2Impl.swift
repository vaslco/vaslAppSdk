import Foundation

protocol SubscriberServiceV2 {

    func sendActivateCodeLater(username: String, mobile: String, email: String, activatedType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword?,String?) -> Void)

    func activateLater(username: String, activationKey: String, activatedType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void)

    func loginOnceTime(username: String, mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_LogineOnceTime?,String?) -> Void)

    func validatedOnceTime(username: String, activationKey: String, mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void)

    func checkAllUser(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser?,String?) -> Void)

    func inactivateSubscriber(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser?,String?) -> Void)

    func addFcmToken(token: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel?,String?) -> Void)

    func registerOperatorSubscriber(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void)

    func validateOperatorSubscriber(activationKey: String, mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void)

    func checkUserRightel(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckRightel?,String?) -> Void)

    func chargeOnDemandRequest(spid: String, otpRequest: String, shortCode: String, chargeCode: String, mobileNo: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemand?,String?) -> Void)

    func chargeOnDemandConfirm(spid: String, shortCode: String, mobileNo: String, otpTransactionId: String, pin: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemandConfirm?,String?) -> Void)


}


public class SubscriberServiceV2Impl  : SubscriberServiceV2 {


    public func sendActivateCodeLater(username: String, mobile: String, email: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword?,String?) -> Void) {
        sendActivateCodeLater(username: username, mobile: mobile, email: email, activatedType: activatedType, completion: completion,force: true)
    }
    
    private func sendActivateCodeLater(username: String, mobile: String, email: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterUserNamePassword?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(activatedType            , forKey: "activatedType")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func activateLater(username: String, activationKey: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void) {
        activateLater(username: username, activationKey: activationKey, activatedType: activatedType, completion: completion,force: true)
    }
    
    private func activateLater(username: String, activationKey: String, activatedType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(activationKey            , forKey: "activationKey")
                    params.updateValue(activatedType            , forKey: "activatedType")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func loginOnceTime(username: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_LogineOnceTime?,String?) -> Void) {
        loginOnceTime(username: username, mobile: mobile, completion: completion,force: true)
    }
    
    private func loginOnceTime(username: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_LogineOnceTime?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/login/oncetime", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_LogineOnceTime(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_LogineOnceTime
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.loginOnceTime(username: username, mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func validatedOnceTime(username: String, activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void) {
        validatedOnceTime(username: username, activationKey: activationKey, mobile: mobile, completion: completion,force: true)
    }
    
    private func validatedOnceTime(username: String, activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(activationKey            , forKey: "activationKey")
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/validated/oncetime", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validatedOnceTime(username: username, activationKey: activationKey, mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func checkAllUser(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser?,String?) -> Void) {
        checkAllUser(mobile: mobile, completion: completion,force: true)
    }
    
    private func checkAllUser(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/check/all/user", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.checkAllUser(mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func inactivateSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser?,String?) -> Void) {
        inactivateSubscriber(mobile: mobile, completion: completion,force: true)
    }
    
    private func inactivateSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/inactivate", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckAllUser
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.inactivateSubscriber(mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func addFcmToken(token: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel?,String?) -> Void) {
        addFcmToken(token: token, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addFcmToken(token: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(token            , forKey: "token")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/fcm/token", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addFcmToken(token: token, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func registerOperatorSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void) {
        registerOperatorSubscriber(mobile: mobile, completion: completion,force: true)
    }
    
    private func registerOperatorSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func validateOperatorSubscriber(activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void) {
        validateOperatorSubscriber(activationKey: activationKey, mobile: mobile, completion: completion,force: true)
    }
    
    private func validateOperatorSubscriber(activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(activationKey            , forKey: "activationKey")
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func checkUserRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckRightel?,String?) -> Void) {
        checkUserRightel(mobile: mobile, completion: completion,force: true)
    }
    
    private func checkUserRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckRightel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(mobile            , forKey: "mobile")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/check/user/rightel", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckRightel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckRightel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.checkUserRightel(mobile: mobile, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func chargeOnDemandRequest(spid: String, otpRequest: String, shortCode: String, chargeCode: String, mobileNo: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemand?,String?) -> Void) {
        chargeOnDemandRequest(spid: spid, otpRequest: otpRequest, shortCode: shortCode, chargeCode: chargeCode, mobileNo: mobileNo, completion: completion,force: true)
    }
    
    private func chargeOnDemandRequest(spid: String, otpRequest: String, shortCode: String, chargeCode: String, mobileNo: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemand?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(spid            , forKey: "spid")
                    params.updateValue(otpRequest            , forKey: "otpRequest")
                    params.updateValue(shortCode            , forKey: "shortCode")
                    params.updateValue(chargeCode            , forKey: "chargeCode")
                    params.updateValue(mobileNo            , forKey: "mobileNo")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/request/charge/ondemand", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemand(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemand
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.chargeOnDemandRequest(spid: spid, otpRequest: otpRequest, shortCode: shortCode, chargeCode: chargeCode, mobileNo: mobileNo, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


    public func chargeOnDemandConfirm(spid: String, shortCode: String, mobileNo: String, otpTransactionId: String, pin: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemandConfirm?,String?) -> Void) {
        chargeOnDemandConfirm(spid: spid, shortCode: shortCode, mobileNo: mobileNo, otpTransactionId: otpTransactionId, pin: pin, completion: completion,force: true)
    }
    
    private func chargeOnDemandConfirm(spid: String, shortCode: String, mobileNo: String, otpTransactionId: String, pin: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemandConfirm?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(spid            , forKey: "spid")
                    params.updateValue(shortCode            , forKey: "shortCode")
                    params.updateValue(mobileNo            , forKey: "mobileNo")
                    params.updateValue(otpTransactionId            , forKey: "otpTransactionId")
                    params.updateValue(pin            , forKey: "pin")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/subscriber/confirm/charge/ondemand", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemandConfirm(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChargeOnDemandConfirm
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.chargeOnDemandConfirm(spid: spid, shortCode: shortCode, mobileNo: mobileNo, otpTransactionId: otpTransactionId, pin: pin, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.msg)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force,hasNounce)
    }


}
