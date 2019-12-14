import Foundation

protocol AnalyticServiceV2 {

    func setDeviceInfo(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_ActiveSessionInHalfHour?,String?) -> Void)

    func getCustomEventList(name: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void)

    func durationStart(time: String, id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void)

    func durationEnd(time: String, id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void)

    func usersData(dataList: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void)


}


public class AnalyticServiceV2Impl  : AnalyticServiceV2 {


    public func setDeviceInfo(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_ActiveSessionInHalfHour?,String?) -> Void) {
        setDeviceInfo(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setDeviceInfo(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_ActiveSessionInHalfHour?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/analytics/test", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_ActiveSessionInHalfHour(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_ActiveSessionInHalfHour
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setDeviceInfo(sessionId: sessionId, completion: completion,force: false)
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


    public func getCustomEventList(name: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void) {
        getCustomEventList(name: name, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getCustomEventList(name: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(name            , forKey: "name")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/analyticsevent/increase", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getCustomEventList(name: name, sessionId: sessionId, completion: completion,force: false)
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


    public func durationStart(time: String, id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void) {
        durationStart(time: time, id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func durationStart(time: String, id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(time            , forKey: "time")
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/analyticsduration/start", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.durationStart(time: time, id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func durationEnd(time: String, id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void) {
        durationEnd(time: time, id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func durationEnd(time: String, id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(time            , forKey: "time")
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/analyticsduration/end", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.durationEnd(time: time, id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func usersData(dataList: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void) {
        usersData(dataList: dataList, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func usersData(dataList: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(dataList            , forKey: "dataList")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/analyticsuser-data/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.usersData(dataList: dataList, sessionId: sessionId, completion: completion,force: false)
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
