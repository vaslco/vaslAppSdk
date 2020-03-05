import Foundation

protocol billing {

    func getUserAccount(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Account?,String?) -> Void)

    func increaseBalance(amount: String, bankCode: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Pay?,String?) -> Void)

    func getAccountListAdmin(id: String, userId: String, credit: String, debit: String, balance: String, type: String, lastUpdateTime: String, insertTime: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_AccountList?,String?) -> Void)

    func getTransactionList(id: String, ipgTransactionId: String, amount: String, operationType: String, transactionStatus: String, startInsertTime: String, endInsertTime: String, startPaymentSuccessTime: String, endPaymentSuccessTime: String, orderId: String, packageId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList?,String?) -> Void)

    func getTransaction(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_GetTransaction?,String?) -> Void)

    func getTransactionListAdmin(id: String, accountId: String, ipgTransactionId: String, amount: String, operationType: String, transactionStatus: String, insertTime: String, paymentSuccessTime: String, orderId: String, packageId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList?,String?) -> Void)


}


public class billingImpl  : billing {


    public func getUserAccount(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Account?,String?) -> Void) {
        getUserAccount(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getUserAccount(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Account?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/billing/getAccount", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Account(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Account
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getUserAccount(sessionId: sessionId, completion: completion,force: false)
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


    public func increaseBalance(amount: String, bankCode: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Pay?,String?) -> Void) {
        increaseBalance(amount: amount, bankCode: bankCode, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func increaseBalance(amount: String, bankCode: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Pay?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(bankCode            , forKey: "bankCode")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/billing/increaseBalance", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Pay(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_Pay
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.increaseBalance(amount: amount, bankCode: bankCode, sessionId: sessionId, completion: completion,force: false)
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


    public func getAccountListAdmin(id: String, userId: String, credit: String, debit: String, balance: String, type: String, lastUpdateTime: String, insertTime: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_AccountList?,String?) -> Void) {
        getAccountListAdmin(id: id, userId: userId, credit: credit, debit: debit, balance: balance, type: type, lastUpdateTime: lastUpdateTime, insertTime: insertTime, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getAccountListAdmin(id: String, userId: String, credit: String, debit: String, balance: String, type: String, lastUpdateTime: String, insertTime: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_AccountList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(userId            , forKey: "userId")
                    params.updateValue(credit            , forKey: "credit")
                    params.updateValue(debit            , forKey: "debit")
                    params.updateValue(balance            , forKey: "balance")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(lastUpdateTime            , forKey: "lastUpdateTime")
                    params.updateValue(insertTime            , forKey: "insertTime")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/billing/admin/account/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_AccountList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_AccountList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getAccountListAdmin(id: id, userId: userId, credit: credit, debit: debit, balance: balance, type: type, lastUpdateTime: lastUpdateTime, insertTime: insertTime, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func getTransactionList(id: String, ipgTransactionId: String, amount: String, operationType: String, transactionStatus: String, startInsertTime: String, endInsertTime: String, startPaymentSuccessTime: String, endPaymentSuccessTime: String, orderId: String, packageId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList?,String?) -> Void) {
        getTransactionList(id: id, ipgTransactionId: ipgTransactionId, amount: amount, operationType: operationType, transactionStatus: transactionStatus, startInsertTime: startInsertTime, endInsertTime: endInsertTime, startPaymentSuccessTime: startPaymentSuccessTime, endPaymentSuccessTime: endPaymentSuccessTime, orderId: orderId, packageId: packageId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getTransactionList(id: String, ipgTransactionId: String, amount: String, operationType: String, transactionStatus: String, startInsertTime: String, endInsertTime: String, startPaymentSuccessTime: String, endPaymentSuccessTime: String, orderId: String, packageId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(ipgTransactionId            , forKey: "ipgTransactionId")
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(operationType            , forKey: "operationType")
                    params.updateValue(transactionStatus            , forKey: "transactionStatus")
                    params.updateValue(startInsertTime            , forKey: "startInsertTime")
                    params.updateValue(endInsertTime            , forKey: "endInsertTime")
                    params.updateValue(startPaymentSuccessTime            , forKey: "startPaymentSuccessTime")
                    params.updateValue(endPaymentSuccessTime            , forKey: "endPaymentSuccessTime")
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(packageId            , forKey: "packageId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/billing/transaction/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getTransactionList(id: id, ipgTransactionId: ipgTransactionId, amount: amount, operationType: operationType, transactionStatus: transactionStatus, startInsertTime: startInsertTime, endInsertTime: endInsertTime, startPaymentSuccessTime: startPaymentSuccessTime, endPaymentSuccessTime: endPaymentSuccessTime, orderId: orderId, packageId: packageId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func getTransaction(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_GetTransaction?,String?) -> Void) {
        getTransaction(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getTransaction(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_GetTransaction?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/billing/transaction/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_GetTransaction(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_GetTransaction
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getTransaction(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func getTransactionListAdmin(id: String, accountId: String, ipgTransactionId: String, amount: String, operationType: String, transactionStatus: String, insertTime: String, paymentSuccessTime: String, orderId: String, packageId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList?,String?) -> Void) {
        getTransactionListAdmin(id: id, accountId: accountId, ipgTransactionId: ipgTransactionId, amount: amount, operationType: operationType, transactionStatus: transactionStatus, insertTime: insertTime, paymentSuccessTime: paymentSuccessTime, orderId: orderId, packageId: packageId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getTransactionListAdmin(id: String, accountId: String, ipgTransactionId: String, amount: String, operationType: String, transactionStatus: String, insertTime: String, paymentSuccessTime: String, orderId: String, packageId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(accountId            , forKey: "accountId")
                    params.updateValue(ipgTransactionId            , forKey: "ipgTransactionId")
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(operationType            , forKey: "operationType")
                    params.updateValue(transactionStatus            , forKey: "transactionStatus")
                    params.updateValue(insertTime            , forKey: "insertTime")
                    params.updateValue(paymentSuccessTime            , forKey: "paymentSuccessTime")
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(packageId            , forKey: "packageId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/billing/admin/transaction/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Billing_Global_Proto_Holder_TransactionList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getTransactionListAdmin(id: id, accountId: accountId, ipgTransactionId: ipgTransactionId, amount: amount, operationType: operationType, transactionStatus: transactionStatus, insertTime: insertTime, paymentSuccessTime: paymentSuccessTime, orderId: orderId, packageId: packageId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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
