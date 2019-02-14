import Foundation

protocol analyticServiceV1 {

    func addEvent(data: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setDeviceInfo(deviceId: String, info: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setBrhaviorFlow(info: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setDeviceinfoByDate(deviceInfo: String, deviceId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setBehaviorByDate(behavior: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func setActiveuserByDate(dates: String, devId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)

    func addDurationByDate(data: String, deviceId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void)


}


public class analyticServiceV1Impl  : analyticServiceV1 {


    public func addEvent(data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        addEvent(data: data, completion: completion,force: true)
    }
    
    private func addEvent(data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(data            , forKey: "data")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/event/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addEvent(data: data, completion: completion,force: false)
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


    public func setDeviceInfo(deviceId: String, info: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setDeviceInfo(deviceId: deviceId, info: info, completion: completion,force: true)
    }
    
    private func setDeviceInfo(deviceId: String, info: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(deviceId            , forKey: "deviceId")
                    params.updateValue(info            , forKey: "info")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/deviceinfo/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setDeviceInfo(deviceId: deviceId, info: info, completion: completion,force: false)
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


    public func setBrhaviorFlow(info: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setBrhaviorFlow(info: info, completion: completion,force: true)
    }
    
    private func setBrhaviorFlow(info: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(info            , forKey: "info")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/behaviorflow/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setBrhaviorFlow(info: info, completion: completion,force: false)
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


    public func setDeviceinfoByDate(deviceInfo: String, deviceId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setDeviceinfoByDate(deviceInfo: deviceInfo, deviceId: deviceId, completion: completion,force: true)
    }
    
    private func setDeviceinfoByDate(deviceInfo: String, deviceId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(deviceInfo            , forKey: "deviceInfo")
                    params.updateValue(deviceId            , forKey: "deviceId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/previous/deviceInfo/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setDeviceinfoByDate(deviceInfo: deviceInfo, deviceId: deviceId, completion: completion,force: false)
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


    public func setBehaviorByDate(behavior: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setBehaviorByDate(behavior: behavior, completion: completion,force: true)
    }
    
    private func setBehaviorByDate(behavior: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(behavior            , forKey: "behavior")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/previous/behavior/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setBehaviorByDate(behavior: behavior, completion: completion,force: false)
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


    public func setActiveuserByDate(dates: String, devId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        setActiveuserByDate(dates: dates, devId: devId, completion: completion,force: true)
    }
    
    private func setActiveuserByDate(dates: String, devId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(dates            , forKey: "dates")
                    params.updateValue(devId            , forKey: "devId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/previous/activeuser/set", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setActiveuserByDate(dates: dates, devId: devId, completion: completion,force: false)
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


    public func addDurationByDate(data: String, deviceId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void) {
        addDurationByDate(data: data, deviceId: deviceId, completion: completion,force: true)
    }
    
    private func addDurationByDate(data: String, deviceId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(deviceId            , forKey: "deviceId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/analytics/duration/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Analytic_Global_Proto_Holder_SetDeviceInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addDurationByDate(data: data, deviceId: deviceId, completion: completion,force: false)
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
