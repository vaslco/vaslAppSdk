import Foundation

protocol AvatarServiceV1 {

    func addAvatar(avatarKeyValueList: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarAdd?,String?) -> Void)

    func removeAvatar(avatarId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarRemove?,String?) -> Void)

    func editAvatar(avatarId: String, avatarKeyValueList: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarUpdate?,String?) -> Void)

    func listAvatars(page: String, order: String, sort: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarList?,String?) -> Void)

    func getAvatar(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_GetAvatar?,String?) -> Void)


}


public class AvatarServiceV1Impl  : AvatarServiceV1 {


    public func addAvatar(avatarKeyValueList: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarAdd?,String?) -> Void) {
        addAvatar(avatarKeyValueList: avatarKeyValueList, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addAvatar(avatarKeyValueList: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(avatarKeyValueList            , forKey: "avatarKeyValueList")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/avatar/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addAvatar(avatarKeyValueList: avatarKeyValueList, sessionId: sessionId, completion: completion,force: false)
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


    public func removeAvatar(avatarId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarRemove?,String?) -> Void) {
        removeAvatar(avatarId: avatarId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func removeAvatar(avatarId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(avatarId            , forKey: "avatarId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/avatar/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarRemove(serializedData: result) as Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.removeAvatar(avatarId: avatarId, sessionId: sessionId, completion: completion,force: false)
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


    public func editAvatar(avatarId: String, avatarKeyValueList: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarUpdate?,String?) -> Void) {
        editAvatar(avatarId: avatarId, avatarKeyValueList: avatarKeyValueList, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func editAvatar(avatarId: String, avatarKeyValueList: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(avatarId            , forKey: "avatarId")
                    params.updateValue(avatarKeyValueList            , forKey: "avatarKeyValueList")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/avatar/edit", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarUpdate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.editAvatar(avatarId: avatarId, avatarKeyValueList: avatarKeyValueList, sessionId: sessionId, completion: completion,force: false)
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


    public func listAvatars(page: String, order: String, sort: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarList?,String?) -> Void) {
        listAvatars(page: page, order: order, sort: sort, completion: completion,force: true)
    }
    
    private func listAvatars(page: String, order: String, sort: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sort            , forKey: "sort")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/avatar/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_AvatarList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAvatars(page: page, order: order, sort: sort, completion: completion,force: false)
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


    public func getAvatar(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_GetAvatar?,String?) -> Void) {
        getAvatar(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getAvatar(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_GetAvatar?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/avatar/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_GetAvatar(serializedData: result) as Com_Vasl_Vaslapp_Modules_Avatar_Global_Proto_Holder_GetAvatar
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getAvatar(id: id, sessionId: sessionId, completion: completion,force: false)
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
