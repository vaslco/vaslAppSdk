import Foundation

protocol SubscriberServiceV1 {

    func register(username: String, password: String, email: String, mobile: String, registrationType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void)

    func registerWithoutSubscriberType(username: String, password: String, email: String, mobile: String, registrationType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void)

    func registerWithNationalId(mobile: String, national_id: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void)

    func checkShahkarSubscriber(requestId: String, serviceNumber: String, serviceType: String, identificationType: String, identificationNo: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckShahkarSubscriber?,String?) -> Void)

    func activateAndLoginForNationalId(mobile: String, activationKey: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void)

    func saveProfileInfo(sessionId: String,nickName: String, firstName: String, lastName: String, fatherName: String, shenasnamehNo: String, deathStatus: String, imageUrl: String, gender: String, birthDate: String, nationalId: String, data: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoModel?,String?) -> Void)

    func getProfileInfo(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoModel?,String?) -> Void)

    func saveProfileInfoJson(subscriberId: String, data: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel?,String?) -> Void)

    func getProfileInfoJson(subscriberId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoJsonModel?,String?) -> Void)

    func activateAndLogin(username: String, activationKey: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void)

    func loginByUsername(username: String, password: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void)

    func loginByEmail(email: String, password: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void)

    func loginByMobile(mobile: String, password: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void)

    func loginByGoogle(id: String, idToken: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void)

    func validateUsername(username: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateUsername?,String?) -> Void)

    func validateEmail(email: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateEmail?,String?) -> Void)

    func validateMobile(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateMobile?,String?) -> Void)

    func resend(subscriberId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend?,String?) -> Void)

    func resendByUsername(username: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend?,String?) -> Void)

    func forgotPasswordByEmail(email: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword?,String?) -> Void)

    func forgotPasswordByMobile(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword?,String?) -> Void)

    func changePassword(sessionId: String, oldPassword: String, newPassword: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangePassword?,String?) -> Void)

    func changeUsername(sessionId: String, username: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangeUsername?,String?) -> Void)

    func mobileconnectClientCreate(mobile: String, first_name: String, last_name: String, email: String, national_id: String, password: String, clientName: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate?,String?) -> Void)

    func mobileconnectAuthToken(authorization_code: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken?,String?) -> Void)

    func registerOperatorSubscriber(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void)

    func validateOperatorSubscriber(activationKey: String, mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateOperatorSubscriber?,String?) -> Void)

    func activate(username: String, activationKey: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void)

    func logout(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Logout?,String?) -> Void)


}


public class SubscriberServiceV1Impl  : SubscriberServiceV1 {


    public func register(username: String, password: String, email: String, mobile: String, registrationType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void) {
        register(username: username, password: password, email: email, mobile: mobile, registrationType: registrationType, completion: completion,force: true)
    }
    
    private func register(username: String, password: String, email: String, mobile: String, registrationType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(password            , forKey: "password")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(registrationType            , forKey: "registrationType")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.register(username: username, password: password, email: email, mobile: mobile, registrationType: registrationType, completion: completion,force: false)
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


    public func registerWithoutSubscriberType(username: String, password: String, email: String, mobile: String, registrationType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void) {
        registerWithoutSubscriberType(username: username, password: password, email: email, mobile: mobile, registrationType: registrationType, completion: completion,force: true)
    }
    
    private func registerWithoutSubscriberType(username: String, password: String, email: String, mobile: String, registrationType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(password            , forKey: "password")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(registrationType            , forKey: "registrationType")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/registerWithoutSubscriberType", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.registerWithoutSubscriberType(username: username, password: password, email: email, mobile: mobile, registrationType: registrationType, completion: completion,force: false)
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


    public func registerWithNationalId(mobile: String, national_id: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void) {
        registerWithNationalId(mobile: mobile, national_id: national_id, completion: completion,force: true)
    }
    
    private func registerWithNationalId(mobile: String, national_id: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(national_id            , forKey: "national_id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/registerWithNationalId", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.registerWithNationalId(mobile: mobile, national_id: national_id, completion: completion,force: false)
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


    public func checkShahkarSubscriber(requestId: String, serviceNumber: String, serviceType: String, identificationType: String, identificationNo: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckShahkarSubscriber?,String?) -> Void) {
        checkShahkarSubscriber(requestId: requestId, serviceNumber: serviceNumber, serviceType: serviceType, identificationType: identificationType, identificationNo: identificationNo, completion: completion,force: true)
    }
    
    private func checkShahkarSubscriber(requestId: String, serviceNumber: String, serviceType: String, identificationType: String, identificationNo: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckShahkarSubscriber?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(requestId            , forKey: "requestId")
                    params.updateValue(serviceNumber            , forKey: "serviceNumber")
                    params.updateValue(serviceType            , forKey: "serviceType")
                    params.updateValue(identificationType            , forKey: "identificationType")
                    params.updateValue(identificationNo            , forKey: "identificationNo")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/checkShahkar", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckShahkarSubscriber(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_CheckShahkarSubscriber
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.checkShahkarSubscriber(requestId: requestId, serviceNumber: serviceNumber, serviceType: serviceType, identificationType: identificationType, identificationNo: identificationNo, completion: completion,force: false)
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


    public func activateAndLoginForNationalId(mobile: String, activationKey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void) {
        activateAndLoginForNationalId(mobile: mobile, activationKey: activationKey, completion: completion,force: true)
    }
    
    private func activateAndLoginForNationalId(mobile: String, activationKey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(activationKey            , forKey: "activationKey")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/activateAndLoginForNationalId", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.activateAndLoginForNationalId(mobile: mobile, activationKey: activationKey, completion: completion,force: false)
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


    public func saveProfileInfo(sessionId: String,nickName: String, firstName: String, lastName: String, fatherName: String, shenasnamehNo: String, deathStatus: String, imageUrl: String, gender: String, birthDate: String, nationalId: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoModel?,String?) -> Void) {
        saveProfileInfo(sessionId: sessionId,nickName: nickName, firstName: firstName, lastName: lastName, fatherName: fatherName, shenasnamehNo: shenasnamehNo, deathStatus: deathStatus, imageUrl: imageUrl, gender: gender, birthDate: birthDate, nationalId: nationalId, data: data, completion: completion,force: true)
    }
    
    private func saveProfileInfo(sessionId: String,nickName: String, firstName: String, lastName: String, fatherName: String, shenasnamehNo: String, deathStatus: String, imageUrl: String, gender: String, birthDate: String, nationalId: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoModel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(firstName            , forKey: "firstName")
                    params.updateValue(lastName            , forKey: "lastName")
                    params.updateValue(fatherName            , forKey: "fatherName")
                    params.updateValue(shenasnamehNo            , forKey: "shenasnamehNo")
                    params.updateValue(deathStatus            , forKey: "deathStatus")
                    params.updateValue(imageUrl            , forKey: "imageUrl")
                    params.updateValue(gender            , forKey: "gender")
                    params.updateValue(birthDate            , forKey: "birthDate")
                    params.updateValue(nationalId            , forKey: "nationalId")
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/saveprofileinfo", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoModel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoModel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.saveProfileInfo(sessionId: sessionId,nickName: nickName, firstName: firstName, lastName: lastName, fatherName: fatherName, shenasnamehNo: shenasnamehNo, deathStatus: deathStatus, imageUrl: imageUrl, gender: gender, birthDate: birthDate, nationalId: nationalId, data: data, completion: completion,force: false)
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


    public func getProfileInfo(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoModel?,String?) -> Void) {
        getProfileInfo(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getProfileInfo(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoModel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
        params.updateValue(sessionId, forKey: "sessionId")
        
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/getprofileinfo", Dictionary<String,String>(), completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoModel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoModel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProfileInfo( sessionId: sessionId,completion: completion,force: false)
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


    public func saveProfileInfoJson(subscriberId: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel?,String?) -> Void) {
        saveProfileInfoJson(subscriberId: subscriberId, data: data, completion: completion,force: true)
    }
    
    private func saveProfileInfoJson(subscriberId: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(data            , forKey: "data")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/saveprofileinfojson", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_SaveProfileInfoJsonModel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.saveProfileInfoJson(subscriberId: subscriberId, data: data, completion: completion,force: false)
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


    public func getProfileInfoJson(subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoJsonModel?,String?) -> Void) {
        getProfileInfoJson(subscriberId: subscriberId, completion: completion,force: true)
    }
    
    private func getProfileInfoJson(subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoJsonModel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/getprofileinfojson", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoJsonModel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_GetProfileInfoJsonModel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProfileInfoJson(subscriberId: subscriberId, completion: completion,force: false)
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


    public func activateAndLogin(username: String, activationKey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void) {
        activateAndLogin(username: username, activationKey: activationKey, completion: completion,force: true)
    }
    
    private func activateAndLogin(username: String, activationKey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(activationKey            , forKey: "activationKey")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/activateandlogin", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.activateAndLogin(username: username, activationKey: activationKey, completion: completion,force: false)
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


    public func loginByUsername(username: String, password: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void) {
        loginByUsername(username: username, password: password, completion: completion,force: true)
    }
    
    private func loginByUsername(username: String, password: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(password            , forKey: "password")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/loginbyusername", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.loginByUsername(username: username, password: password, completion: completion,force: false)
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


    public func loginByEmail(email: String, password: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void) {
        loginByEmail(email: email, password: password, completion: completion,force: true)
    }
    
    private func loginByEmail(email: String, password: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(password            , forKey: "password")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/loginbyemail", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.loginByEmail(email: email, password: password, completion: completion,force: false)
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


    public func loginByMobile(mobile: String, password: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void) {
        loginByMobile(mobile: mobile, password: password, completion: completion,force: true)
    }
    
    private func loginByMobile(mobile: String, password: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(password            , forKey: "password")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/loginbymobile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.loginByMobile(mobile: mobile, password: password, completion: completion,force: false)
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


    public func loginByGoogle(id: String, idToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void) {
        loginByGoogle(id: id, idToken: idToken, completion: completion,force: true)
    }
    
    private func loginByGoogle(id: String, idToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(idToken            , forKey: "idToken")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/loginbygoogle", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Login
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.loginByGoogle(id: id, idToken: idToken, completion: completion,force: false)
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


    public func validateUsername(username: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateUsername?,String?) -> Void) {
        validateUsername(username: username, completion: completion,force: true)
    }
    
    private func validateUsername(username: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateUsername?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/validateusername", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateUsername(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateUsername
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validateUsername(username: username, completion: completion,force: false)
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


    public func validateEmail(email: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateEmail?,String?) -> Void) {
        validateEmail(email: email, completion: completion,force: true)
    }
    
    private func validateEmail(email: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateEmail?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(email            , forKey: "email")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/validateemail", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateEmail(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateEmail
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validateEmail(email: email, completion: completion,force: false)
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


    public func validateMobile(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateMobile?,String?) -> Void) {
        validateMobile(mobile: mobile, completion: completion,force: true)
    }
    
    private func validateMobile(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateMobile?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/validatemobile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateMobile(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ValidateMobile
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validateMobile(mobile: mobile, completion: completion,force: false)
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


    public func resend(subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend?,String?) -> Void) {
        resend(subscriberId: subscriberId, completion: completion,force: true)
    }
    
    private func resend(subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/resend", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.resend(subscriberId: subscriberId, completion: completion,force: false)
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


    public func resendByUsername(username: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend?,String?) -> Void) {
        resendByUsername(username: username, completion: completion,force: true)
    }
    
    private func resendByUsername(username: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/resendbyusername", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Resend
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.resendByUsername(username: username, completion: completion,force: false)
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


    public func forgotPasswordByEmail(email: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword?,String?) -> Void) {
        forgotPasswordByEmail(email: email, completion: completion,force: true)
    }
    
    private func forgotPasswordByEmail(email: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(email            , forKey: "email")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/forgotpasswordbyemail", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.forgotPasswordByEmail(email: email, completion: completion,force: false)
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


    public func forgotPasswordByMobile(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword?,String?) -> Void) {
        forgotPasswordByMobile(mobile: mobile, completion: completion,force: true)
    }
    
    private func forgotPasswordByMobile(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/forgotpasswordbymobile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ForgotPassword
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.forgotPasswordByMobile(mobile: mobile, completion: completion,force: false)
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


    public func changePassword(sessionId: String, oldPassword: String, newPassword: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangePassword?,String?) -> Void) {
        changePassword(sessionId: sessionId, oldPassword: oldPassword, newPassword: newPassword, completion: completion,force: true)
    }
    
    private func changePassword(sessionId: String, oldPassword: String, newPassword: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangePassword?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(oldPassword            , forKey: "oldPassword")
                    params.updateValue(newPassword            , forKey: "newPassword")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/changepassword", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangePassword(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangePassword
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.changePassword(sessionId: sessionId, oldPassword: oldPassword, newPassword: newPassword, completion: completion,force: false)
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


    public func changeUsername(sessionId: String, username: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangeUsername?,String?) -> Void) {
        changeUsername(sessionId: sessionId, username: username, completion: completion,force: true)
    }
    
    private func changeUsername(sessionId: String, username: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangeUsername?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(username            , forKey: "username")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/changeusername", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangeUsername(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ChangeUsername
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.changeUsername(sessionId: sessionId, username: username, completion: completion,force: false)
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


    public func mobileconnectClientCreate(mobile: String, first_name: String, last_name: String, email: String, national_id: String, password: String, clientName: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate?,String?) -> Void) {
        mobileconnectClientCreate(mobile: mobile, first_name: first_name, last_name: last_name, email: email, national_id: national_id, password: password, clientName: clientName, completion: completion,force: true)
    }
    
    private func mobileconnectClientCreate(mobile: String, first_name: String, last_name: String, email: String, national_id: String, password: String, clientName: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(first_name            , forKey: "first_name")
                    params.updateValue(last_name            , forKey: "last_name")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(national_id            , forKey: "national_id")
                    params.updateValue(password            , forKey: "password")
                    params.updateValue(clientName            , forKey: "clientName")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/mobileconnect/client/create", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_ClientCreate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.mobileconnectClientCreate(mobile: mobile, first_name: first_name, last_name: last_name, email: email, national_id: national_id, password: password, clientName: clientName, completion: completion,force: false)
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


    public func mobileconnectAuthToken(authorization_code: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken?,String?) -> Void) {
        mobileconnectAuthToken(authorization_code: authorization_code, completion: completion,force: true)
    }
    
    private func mobileconnectAuthToken(authorization_code: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(authorization_code            , forKey: "authorization_code")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/mobileconnect/auth/token", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_AuthToken
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.mobileconnectAuthToken(authorization_code: authorization_code, completion: completion,force: false)
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


    public func registerOperatorSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void) {
        registerOperatorSubscriber(mobile: mobile, completion: completion,force: true)
    }
    
    private func registerOperatorSubscriber(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_RegisterOperatorSubscriber?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/operators/register", params, completion: { (result, error) in
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
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/operators/validate", params, completion: { (result, error) in
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


    public func activate(username: String, activationKey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void) {
        activate(username: username, activationKey: activationKey, completion: completion,force: true)
    }
    
    private func activate(username: String, activationKey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(activationKey            , forKey: "activationKey")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/activate", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Activate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.activate(username: username, activationKey: activationKey, completion: completion,force: false)
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


    public func logout(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Logout?,String?) -> Void) {
        logout(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func logout(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Logout?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/subscriber/logout", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Logout(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Logout
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.logout(sessionId: sessionId, completion: completion,force: false)
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
