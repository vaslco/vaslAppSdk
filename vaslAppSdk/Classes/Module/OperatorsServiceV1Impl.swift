import Foundation

protocol OperatorsServiceV1 {

    func sendOtpRightel(mobile: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_General?,String?) -> Void)


}


public class OperatorsServiceV1Impl  : OperatorsServiceV1 {


    public func sendOtpRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_General?,String?) -> Void) {
        sendOtpRightel(mobile: mobile, completion: completion,force: true)
    }
    
    private func sendOtpRightel(mobile: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(mobile            , forKey: "mobile")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/operators/operator/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Operators_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendOtpRightel(mobile: mobile, completion: completion,force: false)
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
