import Foundation

protocol SubscriberServiceV1_1 {

    func echo(completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void)

    func echoRequest(completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void)

    func registerWithNationalId(mobile: String, national_id: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void)


}


public class SubscriberServiceV1_1Impl  : SubscriberServiceV1_1 {


    public func echo(completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void) {
        echo( completion: completion,force: true)
    }
    
    private func echo(completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1.1/subscriber/echo", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.echo( completion: completion,force: false)
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


    public func echoRequest(completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void) {
        echoRequest( completion: completion,force: true)
    }
    
    private func echoRequest(completion: @escaping (Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1.1/subscriber/echo/request", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register(serializedData: result) as Com_Vasl_Vaslapp_Modules_Subscriber_Global_Proto_Holder_Register
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.echoRequest( completion: completion,force: false)
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
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1.1/subscriber/registerWithNationalId", params, completion: { (result, error) in
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


}
