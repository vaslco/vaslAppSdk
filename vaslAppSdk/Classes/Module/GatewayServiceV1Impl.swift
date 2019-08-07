import Foundation

protocol GatewayServiceV1 {

    func bankList(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_BankList?,String?) -> Void)

    func rollBack(transactionId: String, refIdHolder: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_RollBack?,String?) -> Void)

    func payment(amount: String, bankCode: String, orderId: String, callBackUserURL: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_Pay?,String?) -> Void)

    func confirmtransaction(orderId: String, transactionId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_ConfirmTransaction?,String?) -> Void)

    func checkTransaction(transactionId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_CheckTransaction?,String?) -> Void)


}


public class GatewayServiceV1Impl  : GatewayServiceV1 {


    public func bankList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_BankList?,String?) -> Void) {
        bankList(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func bankList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_BankList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/gateway/banks/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_BankList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_BankList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.bankList(sessionId: sessionId, completion: completion,force: false)
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


    public func rollBack(transactionId: String, refIdHolder: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_RollBack?,String?) -> Void) {
        rollBack(transactionId: transactionId, refIdHolder: refIdHolder, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func rollBack(transactionId: String, refIdHolder: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_RollBack?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(transactionId            , forKey: "transactionId")
                    params.updateValue(refIdHolder            , forKey: "refIdHolder")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/gateway/roll/back", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_RollBack(serializedData: result) as Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_RollBack
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.rollBack(transactionId: transactionId, refIdHolder: refIdHolder, sessionId: sessionId, completion: completion,force: false)
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


    public func payment(amount: String, bankCode: String, orderId: String, callBackUserURL: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_Pay?,String?) -> Void) {
        payment(amount: amount, bankCode: bankCode, orderId: orderId, callBackUserURL: callBackUserURL, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func payment(amount: String, bankCode: String, orderId: String, callBackUserURL: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_Pay?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(bankCode            , forKey: "bankCode")
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(callBackUserURL            , forKey: "callBackUserURL")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/gateway/payment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_Pay(serializedData: result) as Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_Pay
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.payment(amount: amount, bankCode: bankCode, orderId: orderId, callBackUserURL: callBackUserURL, sessionId: sessionId, completion: completion,force: false)
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


    public func confirmtransaction(orderId: String, transactionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_ConfirmTransaction?,String?) -> Void) {
        confirmtransaction(orderId: orderId, transactionId: transactionId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func confirmtransaction(orderId: String, transactionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_ConfirmTransaction?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(transactionId            , forKey: "transactionId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/gateway/confirm/transaction", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_ConfirmTransaction(serializedData: result) as Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_ConfirmTransaction
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.confirmtransaction(orderId: orderId, transactionId: transactionId, sessionId: sessionId, completion: completion,force: false)
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


    public func checkTransaction(transactionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_CheckTransaction?,String?) -> Void) {
        checkTransaction(transactionId: transactionId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func checkTransaction(transactionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_CheckTransaction?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(transactionId            , forKey: "transactionId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/gateway/check/transaction", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_CheckTransaction(serializedData: result) as Com_Vasl_Vaslapp_Modules_Bankgateway_Global_Proto_Holder_CheckTransaction
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.checkTransaction(transactionId: transactionId, sessionId: sessionId, completion: completion,force: false)
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
