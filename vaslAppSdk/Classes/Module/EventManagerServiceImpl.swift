import Foundation

protocol EventManagerService {

    func addEventManagerComment(eventId: String, comment: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func listEventManagerCommentApi(eventId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi?,String?) -> Void)

    func addEventManagerLike(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)


}


public class EventManagerServiceImpl  : EventManagerService {


    public func addEventManagerComment(eventId: String, comment: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        addEventManagerComment(eventId: eventId, comment: comment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addEventManagerComment(eventId: String, comment: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(comment            , forKey: "comment")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/add/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addEventManagerComment(eventId: eventId, comment: comment, sessionId: sessionId, completion: completion,force: false)
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


    public func listEventManagerCommentApi(eventId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi?,String?) -> Void) {
        listEventManagerCommentApi(eventId: eventId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventManagerCommentApi(eventId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/list/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventManagerCommentApi(eventId: eventId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func addEventManagerLike(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        addEventManagerLike(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addEventManagerLike(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/add/like", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addEventManagerLike(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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
