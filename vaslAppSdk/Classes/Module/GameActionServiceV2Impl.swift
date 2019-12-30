import Foundation

protocol GameActionServiceV2 {

    func dynamicRaiseAction(actionKey: String, actionData: String, userId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction?,String?) -> Void)

    func gameActionGet(actionId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ActionList?,String?) -> Void)


}


public class GameActionServiceV2Impl  : GameActionServiceV2 {


    public func dynamicRaiseAction(actionKey: String, actionData: String, userId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction?,String?) -> Void) {
        dynamicRaiseAction(actionKey: actionKey, actionData: actionData, userId: userId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func dynamicRaiseAction(actionKey: String, actionData: String, userId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(actionKey            , forKey: "actionKey")
                    params.updateValue(actionData            , forKey: "actionData")
                    params.updateValue(userId            , forKey: "userId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/actions/raise", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.dynamicRaiseAction(actionKey: actionKey, actionData: actionData, userId: userId, sessionId: sessionId, completion: completion,force: false)
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


    public func gameActionGet(actionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ActionList?,String?) -> Void) {
        gameActionGet(actionId: actionId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func gameActionGet(actionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ActionList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(actionId            , forKey: "actionId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/actions/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ActionList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ActionList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.gameActionGet(actionId: actionId, sessionId: sessionId, completion: completion,force: false)
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
