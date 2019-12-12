import Foundation

protocol UserDeviceController {

    func registerUserDevice(operationSystem: String, deviceToken: String, username: String, operationSystemVersion: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void)

    func unregisterUserDevice(deviceToken: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void)


}


public class UserDeviceControllerImpl  : UserDeviceController {


    public func registerUserDevice(operationSystem: String, deviceToken: String, username: String, operationSystemVersion: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void) {
        registerUserDevice(operationSystem: operationSystem, deviceToken: deviceToken, username: username, operationSystemVersion: operationSystemVersion, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func registerUserDevice(operationSystem: String, deviceToken: String, username: String, operationSystemVersion: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(operationSystem            , forKey: "operationSystem")
                    params.updateValue(deviceToken            , forKey: "deviceToken")
                    params.updateValue(username            , forKey: "username")
                    params.updateValue(operationSystemVersion            , forKey: "operationSystemVersion")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/engagement/push//register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.registerUserDevice(operationSystem: operationSystem, deviceToken: deviceToken, username: username, operationSystemVersion: operationSystemVersion, sessionId: sessionId, completion: completion,force: false)
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


    public func unregisterUserDevice(deviceToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void) {
        unregisterUserDevice(deviceToken: deviceToken, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func unregisterUserDevice(deviceToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(deviceToken            , forKey: "deviceToken")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/engagement/push//unregister", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.unregisterUserDevice(deviceToken: deviceToken, sessionId: sessionId, completion: completion,force: false)
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
