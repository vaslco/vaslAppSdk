import Foundation

protocol GameFeaturesServiceV1 {

    func getFeatures(completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetFeatures?,String?) -> Void)


}


public class GameFeaturesServiceV1Impl  : GameFeaturesServiceV1 {


    public func getFeatures(completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetFeatures?,String?) -> Void) {
        getFeatures( completion: completion,force: true)
    }
    
    private func getFeatures(completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetFeatures?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/game/features/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetFeatures(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetFeatures
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getFeatures( completion: completion,force: false)
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
