import Foundation

protocol ReferralServiceV1 {

    func dynamicLinkCreate(userId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink?,String?) -> Void)

    func inviteView(inviterUserId: String, invitedUserId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView?,String?) -> Void)

    func inviteRegister(inviterUserId: String, invitedUserId: String, campaignId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void)

    func listCampaign(search: String, searchBy: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void)


}


public class ReferralServiceV1Impl  : ReferralServiceV1 {


    public func dynamicLinkCreate(userId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink?,String?) -> Void) {
        dynamicLinkCreate(userId: userId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func dynamicLinkCreate(userId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_CreateLink?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(userId            , forKey: "userId")
                    params.updateValue(campaignId            , forKey: "campaignId")
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
        }, force)
    }


    public func inviteView(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView?,String?) -> Void) {
        inviteView(inviterUserId: inviterUserId, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func inviteView(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteView?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(inviterUserId            , forKey: "inviterUserId")
                    params.updateValue(invitedUserId            , forKey: "invitedUserId")
                    params.updateValue(campaignId            , forKey: "campaignId")
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
        }, force)
    }


    public func inviteRegister(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void) {
        inviteRegister(inviterUserId: inviterUserId, invitedUserId: invitedUserId, campaignId: campaignId, completion: completion,force: true)
    }
    
    private func inviteRegister(inviterUserId: String, invitedUserId: String, campaignId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(inviterUserId            , forKey: "inviterUserId")
                    params.updateValue(invitedUserId            , forKey: "invitedUserId")
                    params.updateValue(campaignId            , forKey: "campaignId")
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
        }, force)
    }


    public func listCampaign(search: String, searchBy: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void) {
        listCampaign(search: search, searchBy: searchBy, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listCampaign(search: String, searchBy: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(search            , forKey: "search")
                    params.updateValue(searchBy            , forKey: "searchBy")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/referral/list/campaign", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister(serializedData: result) as Com_Vasl_Vaslapp_Modules_Referral_Global_Proto_Holder_InviteRegister
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCampaign(search: search, searchBy: searchBy, sort: sort, order: order, page: page, completion: completion,force: false)
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
