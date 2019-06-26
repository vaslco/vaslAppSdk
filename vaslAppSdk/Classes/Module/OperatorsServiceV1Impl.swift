import Foundation

protocol OperatorsServiceV1 {

    func sendOtpRightel(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_SendOtpRightel?,String?) -> Void)

    func verifyOtpRightel(activationKey: String, mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_VerifyOtpRightel?,String?) -> Void)

    func checkUserRightel(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_CheckRightel?,String?) -> Void)

    func chargeOnDemandRequest(spid: String, otpRequest: String, shortCode: String, chargeCode: String, mobileNo: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemand?,String?) -> Void)

    func chargeOnDemandConfirm(spid: String, shortCode: String, mobileNo: String, otpTransactionId: String, pin: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemandConfirm?,String?) -> Void)


}


public class OperatorsServiceV1Impl  : OperatorsServiceV1 {


    public func sendOtpRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_SendOtpRightel?,String?) -> Void) {
        sendOtpRightel(mobile: mobile, completion: completion,force: true)
    }
    
    private func sendOtpRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_SendOtpRightel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/operators/operator/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_SendOtpRightel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_SendOtpRightel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendOtpRightel(mobile: mobile, completion: completion,force: false)
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


    public func verifyOtpRightel(activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_VerifyOtpRightel?,String?) -> Void) {
        verifyOtpRightel(activationKey: activationKey, mobile: mobile, completion: completion,force: true)
    }
    
    private func verifyOtpRightel(activationKey: String, mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_VerifyOtpRightel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(activationKey            , forKey: "activationKey")
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/operators/operator/validate", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_VerifyOtpRightel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_VerifyOtpRightel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.verifyOtpRightel(activationKey: activationKey, mobile: mobile, completion: completion,force: false)
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


    public func checkUserRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_CheckRightel?,String?) -> Void) {
        checkUserRightel(mobile: mobile, completion: completion,force: true)
    }
    
    private func checkUserRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_CheckRightel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/operators/check/user/rightel", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_CheckRightel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_CheckRightel
                    
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
        }, force)
    }


    public func chargeOnDemandRequest(spid: String, otpRequest: String, shortCode: String, chargeCode: String, mobileNo: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemand?,String?) -> Void) {
        chargeOnDemandRequest(spid: spid, otpRequest: otpRequest, shortCode: shortCode, chargeCode: chargeCode, mobileNo: mobileNo, completion: completion,force: true)
    }
    
    private func chargeOnDemandRequest(spid: String, otpRequest: String, shortCode: String, chargeCode: String, mobileNo: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemand?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(spid            , forKey: "spid")
                    params.updateValue(otpRequest            , forKey: "otpRequest")
                    params.updateValue(shortCode            , forKey: "shortCode")
                    params.updateValue(chargeCode            , forKey: "chargeCode")
                    params.updateValue(mobileNo            , forKey: "mobileNo")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/operators/request/charge/ondemand", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemand(serializedData: result) as Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemand
                    
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
        }, force)
    }


    public func chargeOnDemandConfirm(spid: String, shortCode: String, mobileNo: String, otpTransactionId: String, pin: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemandConfirm?,String?) -> Void) {
        chargeOnDemandConfirm(spid: spid, shortCode: shortCode, mobileNo: mobileNo, otpTransactionId: otpTransactionId, pin: pin, completion: completion,force: true)
    }
    
    private func chargeOnDemandConfirm(spid: String, shortCode: String, mobileNo: String, otpTransactionId: String, pin: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemandConfirm?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(spid            , forKey: "spid")
                    params.updateValue(shortCode            , forKey: "shortCode")
                    params.updateValue(mobileNo            , forKey: "mobileNo")
                    params.updateValue(otpTransactionId            , forKey: "otpTransactionId")
                    params.updateValue(pin            , forKey: "pin")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/operators/confirm/charge/ondemand", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemandConfirm(serializedData: result) as Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_ChargeOnDemandConfirm
                    
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
        }, force)
    }


}
