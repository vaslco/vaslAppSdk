import Foundation

protocol GeoServiceV1 {

    func nearLocation(latitude: String, longitude: String, page: String, findNearMaxDistanceInMeters: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation?,String?) -> Void)

    func setLocation(title: String, refTitle: String, latitude: String, longitude: String, ip: String, tableName: String, fieldName: String, value: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation?,String?) -> Void)

    func removeLocation(locationId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation?,String?) -> Void)


}


public class GeoServiceV1Impl  : GeoServiceV1 {


    public func nearLocation(latitude: String, longitude: String, page: String, findNearMaxDistanceInMeters: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation?,String?) -> Void) {
        nearLocation(latitude: latitude, longitude: longitude, page: page, findNearMaxDistanceInMeters: findNearMaxDistanceInMeters, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func nearLocation(latitude: String, longitude: String, page: String, findNearMaxDistanceInMeters: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(findNearMaxDistanceInMeters            , forKey: "findNearMaxDistanceInMeters")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/nearLocation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.nearLocation(latitude: latitude, longitude: longitude, page: page, findNearMaxDistanceInMeters: findNearMaxDistanceInMeters, sessionId: sessionId, completion: completion,force: false)
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


    public func setLocation(title: String, refTitle: String, latitude: String, longitude: String, ip: String, tableName: String, fieldName: String, value: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation?,String?) -> Void) {
        setLocation(title: title, refTitle: refTitle, latitude: latitude, longitude: longitude, ip: ip, tableName: tableName, fieldName: fieldName, value: value, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func setLocation(title: String, refTitle: String, latitude: String, longitude: String, ip: String, tableName: String, fieldName: String, value: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(refTitle            , forKey: "refTitle")
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(ip            , forKey: "ip")
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(fieldName            , forKey: "fieldName")
                    params.updateValue(value            , forKey: "value")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/setLocation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.setLocation(title: title, refTitle: refTitle, latitude: latitude, longitude: longitude, ip: ip, tableName: tableName, fieldName: fieldName, value: value, sessionId: sessionId, completion: completion,force: false)
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


    public func removeLocation(locationId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation?,String?) -> Void) {
        removeLocation(locationId: locationId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func removeLocation(locationId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(locationId            , forKey: "locationId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/removeLocation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.removeLocation(locationId: locationId, sessionId: sessionId, completion: completion,force: false)
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
