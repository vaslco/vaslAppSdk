import Foundation

protocol EventService {

    func nearLocation(key: String, title: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Global_Proto_Holder_EventGet?,String?) -> Void)


}


public class EventServiceImpl  : EventService {


    public func nearLocation(key: String, title: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Global_Proto_Holder_EventGet?,String?) -> Void) {
        nearLocation(key: key, title: title, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func nearLocation(key: String, title: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Global_Proto_Holder_EventGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(key            , forKey: "key")
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/event/time/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Global_Proto_Holder_EventGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Global_Proto_Holder_EventGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.nearLocation(key: key, title: title, sessionId: sessionId, completion: completion,force: false)
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
