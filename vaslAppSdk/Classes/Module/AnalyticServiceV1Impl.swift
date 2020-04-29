import Foundation

protocol AnalyticServiceV1 {

    func addEvent(data: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setDeviceInfo(deviceId: String, info: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setBrhaviorFlow(info: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setDeviceinfoByDate(deviceInfo: Array<String>, deviceId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setBehaviorByDate(behavior: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setActiveuserByDate(dates: Array<String>, devId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func addDurationByDate(data: Array<String>, deviceId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)


}


public class AnalyticServiceV1Impl  : AnalyticServiceV1 {


    public func addEvent(data: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        addEvent(data: data, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addEvent(data: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/event/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addEvent(data: data, sessionId: sessionId, completion: completion,force: false)
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


    public func setDeviceInfo(deviceId: String, info: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setDeviceInfo(deviceId: deviceId, info: info, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setDeviceInfo(deviceId: String, info: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(info            , forKey: "info")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/deviceinfo/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setDeviceInfo(deviceId: deviceId, info: info, sessionId: sessionId, completion: completion,force: false)
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


    public func setBrhaviorFlow(info: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setBrhaviorFlow(info: info, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setBrhaviorFlow(info: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(info            , forKey: "info")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/behaviorflow/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setBrhaviorFlow(info: info, sessionId: sessionId, completion: completion,force: false)
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


    public func setDeviceinfoByDate(deviceInfo: Array<String>, deviceId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setDeviceinfoByDate(deviceInfo: deviceInfo, deviceId: deviceId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setDeviceinfoByDate(deviceInfo: Array<String>, deviceId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(deviceInfo            , forKey: "deviceInfo")
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/previous/deviceInfo/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setDeviceinfoByDate(deviceInfo: deviceInfo, deviceId: deviceId, sessionId: sessionId, completion: completion,force: false)
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


    public func setBehaviorByDate(behavior: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setBehaviorByDate(behavior: behavior, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setBehaviorByDate(behavior: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(behavior            , forKey: "behavior")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/previous/behavior/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setBehaviorByDate(behavior: behavior, sessionId: sessionId, completion: completion,force: false)
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


    public func setActiveuserByDate(dates: Array<String>, devId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setActiveuserByDate(dates: dates, devId: devId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setActiveuserByDate(dates: Array<String>, devId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(dates            , forKey: "dates")
                    params.updateValue(devId            , forKey: "devId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/previous/activeuser/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setActiveuserByDate(dates: dates, devId: devId, sessionId: sessionId, completion: completion,force: false)
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


    public func addDurationByDate(data: Array<String>, deviceId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        addDurationByDate(data: data, deviceId: deviceId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addDurationByDate(data: Array<String>, deviceId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/duration/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addDurationByDate(data: data, deviceId: deviceId, sessionId: sessionId, completion: completion,force: false)
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
