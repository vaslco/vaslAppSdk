import Foundation

protocol GameUserServiceV2 {

    func addTagsForUser(tags: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)

    func deleteTagsForUser(tags: Array<String>, forEveryOne: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)

    func userStatus(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)


}


public class GameUserServiceV2Impl  : GameUserServiceV2 {


    public func addTagsForUser(tags: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        addTagsForUser(tags: tags, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addTagsForUser(tags: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func deleteTagsForUser(tags: Array<String>, forEveryOne: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        deleteTagsForUser(tags: tags, forEveryOne: forEveryOne, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func deleteTagsForUser(tags: Array<String>, forEveryOne: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(forEveryOne            , forKey: "forEveryOne")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func userStatus(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        userStatus(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func userStatus(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/users/status", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.userStatus(sessionId: sessionId, completion: completion,force: false)
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
