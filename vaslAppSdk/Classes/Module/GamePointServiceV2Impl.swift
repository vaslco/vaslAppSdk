import Foundation

protocol GamePointServiceV2 {

    func listPointsPackages(tag: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ListPackageGamePoint?,String?) -> Void)

    func gamePayment(packageId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void)

    func confirmPackagePayment(orderId: String, transActionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void)

    func gameCafePurchaseValidation(packageName: String, productId: String, purchaseToken: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_CheckOrderPaymentStatus?,String?) -> Void)


}


public class GamePointServiceV2Impl  : GamePointServiceV2 {


    public func listPointsPackages(tag: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ListPackageGamePoint?,String?) -> Void) {
        listPointsPackages(tag: tag, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listPointsPackages(tag: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ListPackageGamePoint?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tag            , forKey: "tag")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/points/rp/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ListPackageGamePoint(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_ListPackageGamePoint
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listPointsPackages(tag: tag, sessionId: sessionId, completion: completion,force: false)
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


    public func gamePayment(packageId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void) {
        gamePayment(packageId: packageId, completion: completion,force: true)
    }
    
    private func gamePayment(packageId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(packageId            , forKey: "packageId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/points/package/payment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.gamePayment(packageId: packageId, completion: completion,force: false)
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


    public func confirmPackagePayment(orderId: String, transActionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void) {
        confirmPackagePayment(orderId: orderId, transActionId: transActionId, completion: completion,force: true)
    }
    
    private func confirmPackagePayment(orderId: String, transActionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(transActionId            , forKey: "transActionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/points/package/payment/confirm", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.confirmPackagePayment(orderId: orderId, transActionId: transActionId, completion: completion,force: false)
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


    public func gameCafePurchaseValidation(packageName: String, productId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_CheckOrderPaymentStatus?,String?) -> Void) {
        gameCafePurchaseValidation(packageName: packageName, productId: productId, purchaseToken: purchaseToken, completion: completion,force: true)
    }
    
    private func gameCafePurchaseValidation(packageName: String, productId: String, purchaseToken: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_CheckOrderPaymentStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(packageName            , forKey: "packageName")
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(purchaseToken            , forKey: "purchaseToken")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/points/package/cafe/payment/confirm", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_CheckOrderPaymentStatus(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_CheckOrderPaymentStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.gameCafePurchaseValidation(packageName: packageName, productId: productId, purchaseToken: purchaseToken, completion: completion,force: false)
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
