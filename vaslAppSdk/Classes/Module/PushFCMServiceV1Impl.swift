import Foundation

protocol PushFCMServiceV1 {

    func setToken(deviceId: String, token: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)

    func setTopic(devIds: String, topicName: String, operator_name: String, insertTag: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)

    func addTopics(deviceId: String, topics: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)


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


    public func setTopic(devIds: String, topicName: String,operator_name: String, insertTag: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void) {
        setTopic(devIds: devIds, topicName: topicName, operator_name: operator_name, insertTag: insertTag, completion: completion,force: true)
    }
    
    private func setTopic(devIds: String, topicName: String, operator_name: String, insertTag: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
        params.updateValue(devIds                , forKey: "devIds")
        params.updateValue(topicName             , forKey: "topicName")
        params.updateValue(operator_name         , forKey: "operator")
        params.updateValue(insertTag             , forKey: "insertTag")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/fcm/topic", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken(serializedData: result) as Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setTopic(devIds: devIds, topicName: topicName, operator_name: operator_name, insertTag: insertTag, completion: completion,force: false)
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


    public func addTopics(deviceId: String, topics: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void) {
        addTopics(deviceId: deviceId, topics: topics, completion: completion,force: true)
    }
    
    private func addTopics(deviceId: String, topics: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(topics            , forKey: "topics")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/fcm/topics/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken(serializedData: result) as Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addTopics(deviceId: deviceId, topics: topics, completion: completion,force: false)
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
