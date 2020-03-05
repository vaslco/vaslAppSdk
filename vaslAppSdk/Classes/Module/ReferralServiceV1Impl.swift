import Foundation

protocol ReferralServiceV1 {

    func dynamicLinkCreate(userId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink?,String?) -> Void)

    func dynamicCodeCreate(userId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode?,String?) -> Void)

    func inviteView(inviterUserId: String, invitedUserId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView?,String?) -> Void)

    func RegisterCode(code: String, invitedUserId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode?,String?) -> Void)

    func inviteRegister(inviterUserId: String, invitedUserId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void)

    func listCampaign(type: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel?,String?) -> Void)


}


public class ReferralServiceV1Impl  : ReferralServiceV1 {


    public func dynamicLinkCreate(userId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink?,String?) -> Void) {
        dynamicLinkCreate(userId: userId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func dynamicLinkCreate(userId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(userId            , forKey: "userId")
                    params.updateValue(campaignId            , forKey: "campaignId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/create/link", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.dynamicLinkCreate(userId: userId, campaignId: campaignId, completion: completion,force: false)
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


    public func dynamicCodeCreate(userId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode?,String?) -> Void) {
        dynamicCodeCreate(userId: userId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func dynamicCodeCreate(userId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(userId            , forKey: "userId")
                    params.updateValue(campaignId            , forKey: "campaignId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/create/code", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateCode
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.dynamicCodeCreate(userId: userId, campaignId: campaignId, completion: completion,force: false)
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


    public func inviteView(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView?,String?) -> Void) {
        inviteView(inviterUserId: inviterUserId, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func inviteView(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(inviterUserId            , forKey: "inviterUserId")
                    params.updateValue(invitedUserId            , forKey: "invitedUserId")
                    params.updateValue(campaignId            , forKey: "campaignId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/invite/view", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.inviteView(inviterUserId: inviterUserId, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: false)
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


    public func RegisterCode(code: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode?,String?) -> Void) {
        RegisterCode(code: code, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func RegisterCode(code: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(code            , forKey: "code")
                    params.updateValue(invitedUserId            , forKey: "invitedUserId")
                    params.updateValue(campaignId            , forKey: "campaignId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/registerCode", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_RegisterCode
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.RegisterCode(code: code, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: false)
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


    public func inviteRegister(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void) {
        inviteRegister(inviterUserId: inviterUserId, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func inviteRegister(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(inviterUserId            , forKey: "inviterUserId")
                    params.updateValue(invitedUserId            , forKey: "invitedUserId")
                    params.updateValue(campaignId            , forKey: "campaignId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/invite/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.inviteRegister(inviterUserId: inviterUserId, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: false)
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


    public func listCampaign(type: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel?,String?) -> Void) {
        listCampaign(type: type, page: page, completion: completion,force: true)
    }
    
    private func listCampaign(type: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/list/campaign", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_ListCampaignPanel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCampaign(type: type, page: page, completion: completion,force: false)
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
