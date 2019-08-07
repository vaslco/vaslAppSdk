import Foundation

protocol GameActionServiceV1 {

    func raiseAction(actionKey: String, actionData: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction?,String?) -> Void)


}


public class GameActionServiceV1Impl  : GameActionServiceV1 {


    public func raiseAction(actionKey: String, actionData: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction?,String?) -> Void) {
        raiseAction(actionKey: actionKey, actionData: actionData, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func raiseAction(actionKey: String, actionData: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(actionKey            , forKey: "actionKey")
                    params.updateValue(actionData            , forKey: "actionData")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/game/actions/raise", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_RaiseAction
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.raiseAction(actionKey: actionKey, actionData: actionData, sessionId: sessionId, completion: completion,force: false)
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
