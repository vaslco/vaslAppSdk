import Foundation

protocol PushFCMServiceV1 {

    func setToken(deviceId: String, token: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)

    func addTopics(deviceId: String, topicsAdd: String, topicsRemove: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)


}


public class PushFCMServiceV1Impl  : PushFCMServiceV1 {


    public func setToken(deviceId: String, token: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void) {
        setToken(deviceId: deviceId, token: token, completion: completion,force: true)
    }
    
    private func setToken(deviceId: String, token: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(token            , forKey: "token")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/fcm/token/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken(serializedData: result) as Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setToken(deviceId: deviceId, token: token, completion: completion,force: false)
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


    public func addTopics(deviceId: String, topicsAdd: String, topicsRemove: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void) {
        addTopics(deviceId: deviceId, topicsAdd: topicsAdd, topicsRemove: topicsRemove, completion: completion,force: true)
    }
    
    private func addTopics(deviceId: String, topicsAdd: String, topicsRemove: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(topicsAdd            , forKey: "topicsAdd")
                    params.updateValue(topicsRemove            , forKey: "topicsRemove")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/fcm/topics", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken(serializedData: result) as Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addTopics(deviceId: deviceId, topicsAdd: topicsAdd, topicsRemove: topicsRemove, completion: completion,force: false)
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
