import Foundation

protocol AppServices {

    func nearLocation(completion : @escaping (Com_Vasl_Vaslapp_Modules_App_Global_Proto_Holder_TimeGet?,String?) -> Void)


}


public class AppServicesImpl  : AppServices {


    public func nearLocation(completion: @escaping (Com_Vasl_Vaslapp_Modules_App_Global_Proto_Holder_TimeGet?,String?) -> Void) {
        nearLocation( completion: completion,force: true)
    }
    
    private func nearLocation(completion: @escaping (Com_Vasl_Vaslapp_Modules_App_Global_Proto_Holder_TimeGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/app/time/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_App_Global_Proto_Holder_TimeGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_App_Global_Proto_Holder_TimeGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.nearLocation( completion: completion,force: false)
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
