import Foundation

protocol MgsServiceV1 {

    func sendNormalSMS(mobile: String, message: String, aggregatorName: String, senderName: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General?,String?) -> Void)


}


public class MgsServiceV1Impl  : MgsServiceV1 {


    public func sendNormalSMS(mobile: String, message: String, aggregatorName: String, senderName: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General?,String?) -> Void) {
        sendNormalSMS(mobile: mobile, message: message, aggregatorName: aggregatorName, senderName: senderName, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func sendNormalSMS(mobile: String, message: String, aggregatorName: String, senderName: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(aggregatorName            , forKey: "aggregatorName")
                    params.updateValue(senderName            , forKey: "senderName")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/mgs/send/normal/sms", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendNormalSMS(mobile: mobile, message: message, aggregatorName: aggregatorName, senderName: senderName, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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
