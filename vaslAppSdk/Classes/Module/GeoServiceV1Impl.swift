import Foundation

protocol GeoServiceV1 {

    func getPolygonInfo(latitude: String, longitude: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_FindPolygonInfo?,String?) -> Void)

    func removeLocation(locationId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation?,String?) -> Void)

    func getAllStates(country: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void)

    func addLocation(title: String, refTitle: String, latitude: String, longitude: String, ip: String, tableName: String, fieldName: String, value: String, infoPoint: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation?,String?) -> Void)

    func getAllCitys(country: String, state: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void)

    func getAllCountry(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void)

    func nearLocation(latitude: String, longitude: String, page: String, findNearMaxDistanceInMeters: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation?,String?) -> Void)


}


public class GeoServiceV1Impl  : GeoServiceV1 {


    public func getPolygonInfo(latitude: String, longitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_FindPolygonInfo?,String?) -> Void) {
        getPolygonInfo(latitude: latitude, longitude: longitude, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getPolygonInfo(latitude: String, longitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_FindPolygonInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/getPolygonInfo", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_FindPolygonInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_FindPolygonInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getPolygonInfo(latitude: latitude, longitude: longitude, sessionId: sessionId, completion: completion,force: false)
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


    public func removeLocation(locationId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation?,String?) -> Void) {
        removeLocation(locationId: locationId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func removeLocation(locationId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_RemoveLocation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(locationId            , forKey: "locationId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func getAllStates(country: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void) {
        getAllStates(country: country, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getAllStates(country: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(country            , forKey: "country")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/getAllState", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getAllStates(country: country, sessionId: sessionId, completion: completion,force: false)
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


    public func addLocation(title: String, refTitle: String, latitude: String, longitude: String, ip: String, tableName: String, fieldName: String, value: String, infoPoint: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation?,String?) -> Void) {
        addLocation(title: title, refTitle: refTitle, latitude: latitude, longitude: longitude, ip: ip, tableName: tableName, fieldName: fieldName, value: value, infoPoint: infoPoint, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addLocation(title: String, refTitle: String, latitude: String, longitude: String, ip: String, tableName: String, fieldName: String, value: String, infoPoint: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(refTitle            , forKey: "refTitle")
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(ip            , forKey: "ip")
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(fieldName            , forKey: "fieldName")
                    params.updateValue(value            , forKey: "value")
                    params.updateValue(infoPoint            , forKey: "infoPoint")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/setLocation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_SetLocation
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addLocation(title: title, refTitle: refTitle, latitude: latitude, longitude: longitude, ip: ip, tableName: tableName, fieldName: fieldName, value: value, infoPoint: infoPoint, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func getAllCitys(country: String, state: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void) {
        getAllCitys(country: country, state: state, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getAllCitys(country: String, state: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(country            , forKey: "country")
                    params.updateValue(state            , forKey: "state")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/getAllCitys", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getAllCitys(country: country, state: state, sessionId: sessionId, completion: completion,force: false)
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


    public func getAllCountry(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void) {
        getAllCountry(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getAllCountry(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/geo/getAllCountry", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld(serializedData: result) as Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_GetInfoWorld
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getAllCountry(sessionId: sessionId, completion: completion,force: false)
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


    public func nearLocation(latitude: String, longitude: String, page: String, findNearMaxDistanceInMeters: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation?,String?) -> Void) {
        nearLocation(latitude: latitude, longitude: longitude, page: page, findNearMaxDistanceInMeters: findNearMaxDistanceInMeters, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func nearLocation(latitude: String, longitude: String, page: String, findNearMaxDistanceInMeters: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Geo_Global_Proto_Holder_ListLocation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(latitude            , forKey: "latitude")
                    params.updateValue(longitude            , forKey: "longitude")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(findNearMaxDistanceInMeters            , forKey: "findNearMaxDistanceInMeters")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


}
