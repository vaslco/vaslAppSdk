import Foundation

protocol BillingInappServiceV1 {

    func validatePurchase(packageName: String, productId: String, purchaseToken: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_purchaseValidate?,String?) -> Void)

    func validateSubscription(packageName: String, subscriptionId: String, purchaseToken: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate?,String?) -> Void)

    func cancelSubscription(packageName: String, subscriptionId: String, purchaseToken: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate?,String?) -> Void)


}


public class BillingInappServiceV1Impl  : BillingInappServiceV1 {


    public func validatePurchase(packageName: String, productId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_purchaseValidate?,String?) -> Void) {
        validatePurchase(packageName: packageName, productId: productId, purchaseToken: purchaseToken, completion: completion,force: true)
    }
    
    private func validatePurchase(packageName: String, productId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_purchaseValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/validate/purchase", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_purchaseValidate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_purchaseValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validatePurchase(packageName: packageName, productId: productId, purchaseToken: purchaseToken, completion: completion,force: false)
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


    public func validateSubscription(packageName: String, subscriptionId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate?,String?) -> Void) {
        validateSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, completion: completion,force: true)
    }
    
    private func validateSubscription(packageName: String, subscriptionId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(subscriptionId            , forKey: "subscriptionId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/validate/subscription", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validateSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, completion: completion,force: false)
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


    public func cancelSubscription(packageName: String, subscriptionId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate?,String?) -> Void) {
        cancelSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, completion: completion,force: true)
    }
    
    private func cancelSubscription(packageName: String, subscriptionId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(subscriptionId            , forKey: "subscriptionId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/cancel/subscription", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_subscriptionValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.cancelSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, completion: completion,force: false)
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
