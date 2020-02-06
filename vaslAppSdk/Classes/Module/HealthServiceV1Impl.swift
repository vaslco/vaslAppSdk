import Foundation

protocol HealthServiceV1 {

    func healthCenterAdd(id: String, name: String, latitude: String, longitude: String, description: String, confirm: String, objectId: String, contentDoc: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate?,String?) -> Void)

    func healthCenterAdd(id: String, name: String, latitude: String, longitude: String, description: String, confirm: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd?,String?) -> Void)

    func healthCenterRead(id: String, objectId: String, contentDoc: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate?,String?) -> Void)


}


public class HealthServiceV1Impl  : HealthServiceV1 {


    public func healthCenterAdd(id: String, name: String, latitude: String, longitude: String, description: String, confirm: String, objectId: String, contentDoc: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate?,String?) -> Void) {
        healthCenterAdd(id: id, name: name, latitude: latitude, longitude: longitude, description: description, confirm: confirm, objectId: objectId, contentDoc: contentDoc, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func healthCenterAdd(id: String, name: String, latitude: String, longitude: String, description: String, confirm: String, objectId: String, contentDoc: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(name            , forKey: "name")
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(confirm            , forKey: "confirm")
                    params.updateValue(objectId            , forKey: "objectId")
                    params.updateValue(contentDoc            , forKey: "contentDoc")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/app/health/updateHealthCenter", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.healthCenterAdd(id: id, name: name, latitude: latitude, longitude: longitude, description: description, confirm: confirm, objectId: objectId, contentDoc: contentDoc, sessionId: sessionId, completion: completion,force: false)
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


    public func healthCenterAdd(id: String, name: String, latitude: String, longitude: String, description: String, confirm: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd?,String?) -> Void) {
        healthCenterAdd(id: id, name: name, latitude: latitude, longitude: longitude, description: description, confirm: confirm, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func healthCenterAdd(id: String, name: String, latitude: String, longitude: String, description: String, confirm: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(name            , forKey: "name")
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(confirm            , forKey: "confirm")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/app/health/addHealthCenter", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.healthCenterAdd(id: id, name: name, latitude: latitude, longitude: longitude, description: description, confirm: confirm, sessionId: sessionId, completion: completion,force: false)
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


    public func healthCenterRead(id: String, objectId: String, contentDoc: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate?,String?) -> Void) {
        healthCenterRead(id: id, objectId: objectId, contentDoc: contentDoc, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func healthCenterRead(id: String, objectId: String, contentDoc: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(objectId            , forKey: "objectId")
                    params.updateValue(contentDoc            , forKey: "contentDoc")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/app/health/getHealthCenter", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Health_Proto_Holder_HealthCenterUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.healthCenterRead(id: id, objectId: objectId, contentDoc: contentDoc, sessionId: sessionId, completion: completion,force: false)
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
