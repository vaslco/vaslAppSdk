import Foundation

protocol EmailController {

    func send(fromEmail: String, recipients: Array<String>, attachment: NSData, templateName: String, cc: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)


}


public class EmailControllerImpl  : EmailController {


    public func send(fromEmail: String, recipients: Array<String>, attachment: NSData, templateName: String, cc: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        send(fromEmail: fromEmail, recipients: recipients, attachment: attachment, templateName: templateName, cc: cc, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func send(fromEmail: String, recipients: Array<String>, attachment: NSData, templateName: String, cc: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(fromEmail            , forKey: "fromEmail")
                    params.updateValue(recipients            , forKey: "recipients")
                    params.updateValue(attachment            , forKey: "attachment")
                    params.updateValue(templateName            , forKey: "templateName")
                    params.updateValue(cc            , forKey: "cc")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/engagement/email//send", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.send(fromEmail: fromEmail, recipients: recipients, attachment: attachment, templateName: templateName, cc: cc, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


}
