import Foundation

protocol ChargeServiceV1 {

    func chargeBuy(amount: String, operator: String, bankId: String, phoneNumber: String, topup: String, merchant: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeBuy?,String?) -> Void)

    func callback(appid: String, subscriberId: String, transactionId: String, amount: String, bankCode: String, orderId: String, status: String, refIdHolder: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeCallBack?,String?) -> Void)
}


public class ChargeServiceV1Impl  : ChargeServiceV1 {


    public func chargeBuy(amount: String, operator operator_name : String, bankId: String, phoneNumber: String, topup: String, merchant: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeBuy?,String?) -> Void) {
        chargeBuy(amount: amount, operator_name: operator_name, bankId: bankId, phoneNumber: phoneNumber, topup: topup, merchant: merchant, completion: completion,force: true)
    }
    
    private func chargeBuy(amount: String, operator_name: String, bankId: String, phoneNumber: String, topup: String, merchant: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeBuy?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(amount               , forKey: "amount")
                    params.updateValue(operator_name        , forKey: "operator")
                    params.updateValue(bankId               , forKey: "bankId")
                    params.updateValue(phoneNumber          , forKey: "phoneNumber")
                    params.updateValue(topup                , forKey: "topup")
                    params.updateValue(merchant             , forKey: "merchant")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/optcharge/buy", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeBuy(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeBuy
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.chargeBuy(amount: amount, operator_name: operator_name, bankId: bankId, phoneNumber: phoneNumber, topup: topup, merchant: merchant, completion: completion,force: false)
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


    public func callback(appid: String, subscriberId: String, transactionId: String, amount: String, bankCode: String, orderId: String, status: String, refIdHolder: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeCallBack?,String?) -> Void) {
        callback(appid: appid, subscriberId: subscriberId, transactionId: transactionId, amount: amount, bankCode: bankCode, orderId: orderId, status: status, refIdHolder: refIdHolder, completion: completion,force: true)
    }
    
    private func callback(appid: String, subscriberId: String, transactionId: String, amount: String, bankCode: String, orderId: String, status: String, refIdHolder: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeCallBack?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(appid            , forKey: "appid")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(transactionId            , forKey: "transactionId")
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(bankCode            , forKey: "bankCode")
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(refIdHolder            , forKey: "refIdHolder")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/optcharge/callback/gateway", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeCallBack(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Charge_Global_Proto_Holder_ChargeCallBack
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.callback(appid: appid, subscriberId: subscriberId, transactionId: transactionId, amount: amount, bankCode: bankCode, orderId: orderId, status: status, refIdHolder: refIdHolder, completion: completion,force: false)
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
