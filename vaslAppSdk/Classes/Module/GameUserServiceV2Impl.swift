import Foundation

protocol GameUserServiceV2 {

    func addTagsForUser(tags: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)

    func deleteTagsForUser(tags: String, forEveryOne: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)

    func userStatus(completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)


}


public class GameUserServiceV2Impl  : GameUserServiceV2 {


    public func addTagsForUser(tags: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        addTagsForUser(tags: tags, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addTagsForUser(tags: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/users/add/tags", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addTagsForUser(tags: tags, sessionId: sessionId, completion: completion,force: false)
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


    public func deleteTagsForUser(tags: String, forEveryOne: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        deleteTagsForUser(tags: tags, forEveryOne: forEveryOne, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func deleteTagsForUser(tags: String, forEveryOne: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(forEveryOne            , forKey: "forEveryOne")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/users/delete/tags", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.deleteTagsForUser(tags: tags, forEveryOne: forEveryOne, sessionId: sessionId, completion: completion,force: false)
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


    public func userStatus(completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        userStatus( completion: completion,force: true)
    }
    
    private func userStatus(completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        let params = Dictionary<String,String>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/users/status", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.userStatus( completion: completion,force: false)
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
