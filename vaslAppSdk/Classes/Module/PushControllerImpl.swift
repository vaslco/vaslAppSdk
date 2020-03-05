import Foundation

protocol PushController {

    func sendPushToUser(title: String, image: String, message: String, recipient: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void)

    func sendPushToChannel(title: String, image: String, message: String, channelId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void)

    func subscribeUserToChannel(token: String, channelName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void)

    func unsubscribeUserFromChannel(token: String, channelName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void)


}


public class PushControllerImpl  : PushController {


    public func sendPushToUser(title: String, image: String, message: String, recipient: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void) {
        sendPushToUser(title: title, image: image, message: message, recipient: recipient, completion: completion,force: true)
    }
    
    private func sendPushToUser(title: String, image: String, message: String, recipient: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(image            , forKey: "image")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(recipient            , forKey: "recipient")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/engagement/push//send", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendPushToUser(title: title, image: image, message: message, recipient: recipient, completion: completion,force: false)
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


    public func sendPushToChannel(title: String, image: String, message: String, channelId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void) {
        sendPushToChannel(title: title, image: image, message: message, channelId: channelId, completion: completion,force: true)
    }
    
    private func sendPushToChannel(title: String, image: String, message: String, channelId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(image            , forKey: "image")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(channelId            , forKey: "channelId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/engagement/push/channel/send", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.sendPushToChannel(title: title, image: image, message: message, channelId: channelId, completion: completion,force: false)
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


    public func subscribeUserToChannel(token: String, channelName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void) {
        subscribeUserToChannel(token: token, channelName: channelName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscribeUserToChannel(token: String, channelName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(token            , forKey: "token")
                    params.updateValue(channelName            , forKey: "channelName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/engagement/push//add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscribeUserToChannel(token: token, channelName: channelName, sessionId: sessionId, completion: completion,force: false)
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


    public func unsubscribeUserFromChannel(token: String, channelName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void) {
        unsubscribeUserFromChannel(token: token, channelName: channelName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func unsubscribeUserFromChannel(token: String, channelName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(token            , forKey: "token")
                    params.updateValue(channelName            , forKey: "channelName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/engagement/push//remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Engagement_Channels_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.unsubscribeUserFromChannel(token: token, channelName: channelName, sessionId: sessionId, completion: completion,force: false)
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
