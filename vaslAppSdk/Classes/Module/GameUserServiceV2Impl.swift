import Foundation

protocol GameUserServiceV2 {

    func userStatus(completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void)


}


public class GameUserServiceV2Impl  : GameUserServiceV2 {


    public func userStatus(completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void) {
        userStatus( completion: completion,force: true)
    }
    
    private func userStatus(completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_UserStatus?,String?) -> Void,force : Bool) {
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/users/status", Dictionary<String,String>(), completion: { (result, error) in
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
