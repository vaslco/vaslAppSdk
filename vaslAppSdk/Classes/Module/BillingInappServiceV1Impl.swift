import Foundation

protocol BillingInappServiceV1 {

    func validatePurchase(packageName: String, productId: String, purchaseToken: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PurchaseValidate?,String?) -> Void)

    func validateSubscription(packageName: String, subscriptionId: String, purchaseToken: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate?,String?) -> Void)

    func cancelSubscription(packageName: String, subscriptionId: String, purchaseToken: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate?,String?) -> Void)

    func paymentAddData(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentGetInfo?,String?) -> Void)

    func paymentAddData(meta: String, tableName: String, orderId: String, paymentBy: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentAdd?,String?) -> Void)


}


public class BillingInappServiceV1Impl  : BillingInappServiceV1 {


    public func validatePurchase(packageName: String, productId: String, purchaseToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PurchaseValidate?,String?) -> Void) {
        validatePurchase(packageName: packageName, productId: productId, purchaseToken: purchaseToken, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func validatePurchase(packageName: String, productId: String, purchaseToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PurchaseValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/validate/purchase", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PurchaseValidate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PurchaseValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validatePurchase(packageName: packageName, productId: productId, purchaseToken: purchaseToken, sessionId: sessionId, completion: completion,force: false)
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


    public func validateSubscription(packageName: String, subscriptionId: String, purchaseToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate?,String?) -> Void) {
        validateSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func validateSubscription(packageName: String, subscriptionId: String, purchaseToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(subscriptionId            , forKey: "subscriptionId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/validate/subscription", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.validateSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, sessionId: sessionId, completion: completion,force: false)
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


    public func cancelSubscription(packageName: String, subscriptionId: String, purchaseToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate?,String?) -> Void) {
        cancelSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func cancelSubscription(packageName: String, subscriptionId: String, purchaseToken: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(subscriptionId            , forKey: "subscriptionId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/cancel/subscription", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_SubscriptionValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.cancelSubscription(packageName: packageName, subscriptionId: subscriptionId, purchaseToken: purchaseToken, sessionId: sessionId, completion: completion,force: false)
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


    public func paymentAddData(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentGetInfo?,String?) -> Void) {
        paymentAddData(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func paymentAddData(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentGetInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/payment/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentGetInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentGetInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.paymentAddData(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func paymentAddData(meta: String, tableName: String, orderId: String, paymentBy: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentAdd?,String?) -> Void) {
        paymentAddData(meta: meta, tableName: tableName, orderId: orderId, paymentBy: paymentBy, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func paymentAddData(meta: String, tableName: String, orderId: String, paymentBy: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(meta            , forKey: "meta")
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(paymentBy            , forKey: "paymentBy")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/bazarbilling/payment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Inapp_Global_Proto_Holder_PaymentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.paymentAddData(meta: meta, tableName: tableName, orderId: orderId, paymentBy: paymentBy, sessionId: sessionId, completion: completion,force: false)
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
