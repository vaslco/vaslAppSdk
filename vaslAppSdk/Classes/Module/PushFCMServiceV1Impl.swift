import Foundation

protocol PushFCMServiceV1 {

    func setToken(deviceId: String, token: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)

    func addTopics(deviceId: String, topicsAdd: Array<String>, topicsRemove: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void)

    func addTopics(documentId: String, deviceId: String, msg_status: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SendMessage?,String?) -> Void)


}


public class PushFCMServiceV1Impl  : PushFCMServiceV1 {


    public func setToken(deviceId: String, token: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void) {
        setToken(deviceId: deviceId, token: token, completion: completion,force: true)
    }
    
    private func setToken(deviceId: String, token: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(token            , forKey: "token")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func addTopics(deviceId: String, topicsAdd: Array<String>, topicsRemove: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void) {
        addTopics(deviceId: deviceId, topicsAdd: topicsAdd, topicsRemove: topicsRemove, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addTopics(deviceId: String, topicsAdd: Array<String>, topicsRemove: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(topicsAdd            , forKey: "topicsAdd")
                    params.updateValue(topicsRemove            , forKey: "topicsRemove")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/fcm/topics", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken(serializedData: result) as Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SetToken
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addTopics(deviceId: deviceId, topicsAdd: topicsAdd, topicsRemove: topicsRemove, sessionId: sessionId, completion: completion,force: false)
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


    public func addTopics(documentId: String, deviceId: String, msg_status: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SendMessage?,String?) -> Void) {
        addTopics(documentId: documentId, deviceId: deviceId, msg_status: msg_status, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addTopics(documentId: String, deviceId: String, msg_status: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SendMessage?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(documentId            , forKey: "documentId")
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(msg_status            , forKey: "msg_status")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/fcm/update/status", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SendMessage(serializedData: result) as Com_Vasl_Vaslapp_Modules_Push_Fcm_Global_Proto_Holder_SendMessage
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addTopics(documentId: documentId, deviceId: deviceId, msg_status: msg_status, sessionId: sessionId, completion: completion,force: false)
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
