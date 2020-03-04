import Foundation

protocol AppVersionServiceV1 {

    func listAppVersion(minSdk: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Appversion_Global_Proto_Holder_ListAppVersionApi?,String?) -> Void)


}


public class AppVersionServiceV1Impl  : AppVersionServiceV1 {


    public func listAppVersion(minSdk: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Appversion_Global_Proto_Holder_ListAppVersionApi?,String?) -> Void) {
        listAppVersion(minSdk: minSdk, completion: completion,force: true)
    }
    
    private func listAppVersion(minSdk: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Appversion_Global_Proto_Holder_ListAppVersionApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(minSdk            , forKey: "minSdk")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/appversion/list/appversion", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Appversion_Global_Proto_Holder_ListAppVersionApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Appversion_Global_Proto_Holder_ListAppVersionApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAppVersion(minSdk: minSdk, completion: completion,force: false)
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
