import Foundation

protocol MgsServiceV1 {

    func sendNormalSMS(to: String, from: String, message: String, operatorName: String, aggregatorName: String, senderName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General?,String?) -> Void)


}


public class MgsServiceV1Impl  : MgsServiceV1 {


    public func sendNormalSMS(to: String, from: String, message: String, operatorName: String, aggregatorName: String, senderName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General?,String?) -> Void) {
        sendNormalSMS(to: to, from: from, message: message, operatorName: operatorName, aggregatorName: aggregatorName, senderName: senderName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func sendNormalSMS(to: String, from: String, message: String, operatorName: String, aggregatorName: String, senderName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(to            , forKey: "to")
                    params.updateValue(from            , forKey: "from")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(operatorName            , forKey: "operatorName")
                    params.updateValue(aggregatorName            , forKey: "aggregatorName")
                    params.updateValue(senderName            , forKey: "senderName")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/mgs/send/normal/sms", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Mgs_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendNormalSMS(to: to, from: from, message: message, operatorName: operatorName, aggregatorName: aggregatorName, senderName: senderName, sessionId: sessionId, completion: completion,force: false)
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
