import Foundation

protocol DynamicLinkServiceV1 {

    func linkAdd(title: String, link: String, type: String, expireDate: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamiclink_Proto_Holder_LinkAdd?,String?) -> Void)


}


public class DynamicLinkServiceV1Impl  : DynamicLinkServiceV1 {


    public func linkAdd(title: String, link: String, type: String, expireDate: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamiclink_Proto_Holder_LinkAdd?,String?) -> Void) {
        linkAdd(title: title, link: link, type: type, expireDate: expireDate, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func linkAdd(title: String, link: String, type: String, expireDate: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamiclink_Proto_Holder_LinkAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(link            , forKey: "link")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(expireDate            , forKey: "expireDate")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamiclink/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamiclink_Proto_Holder_LinkAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamiclink_Proto_Holder_LinkAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.linkAdd(title: title, link: link, type: type, expireDate: expireDate, sessionId: sessionId, completion: completion,force: false)
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
