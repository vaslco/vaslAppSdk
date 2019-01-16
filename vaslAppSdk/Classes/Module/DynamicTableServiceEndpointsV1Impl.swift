import Foundation

protocol DynamicTableServiceEndpointsV1 {

    func endpointInsert(tableName: String, data: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointInsert?,String?) -> Void)

    func endpointUpdateOne(tableName: String, upsert: String, find: String, data: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate?,String?) -> Void)

    func endpointUpdateMany(tableName: String, upsert: String, find: String, data: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate?,String?) -> Void)

    func endpointDeleteOne(tableName: String, find: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete?,String?) -> Void)

    func endpointDeleteMany(tableName: String, find: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete?,String?) -> Void)

    func endpointFind(tableName: String, find: String, projection: String, sort: String, skip: String, limit: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointCount(tableName: String, find: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointCount?,String?) -> Void)

    func endpointQuery(queryName: String, find: String, projection: String, sort: String, skip: String, limit: String,completion : @escaping (webServiceResult?,String?) -> Void)


}


public class DynamicTableServiceEndpointsV1Impl  : DynamicTableServiceEndpointsV1 {


    public func endpointInsert(tableName: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointInsert?,String?) -> Void) {
        endpointInsert(tableName: tableName, data: data, completion: completion,force: true)
    }
    
    private func endpointInsert(tableName: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointInsert?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(data            , forKey: "data")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/insert", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointInsert(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointInsert
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointInsert(tableName: tableName, data: data, completion: completion,force: false)
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


    public func endpointUpdateOne(tableName: String, upsert: String, find: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate?,String?) -> Void) {
        endpointUpdateOne(tableName: tableName, upsert: upsert, find: find, data: data, completion: completion,force: true)
    }
    
    private func endpointUpdateOne(tableName: String, upsert: String, find: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(upsert            , forKey: "upsert")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(data            , forKey: "data")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/updateOne", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointUpdateOne(tableName: tableName, upsert: upsert, find: find, data: data, completion: completion,force: false)
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


    public func endpointUpdateMany(tableName: String, upsert: String, find: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate?,String?) -> Void) {
        endpointUpdateMany(tableName: tableName, upsert: upsert, find: find, data: data, completion: completion,force: true)
    }
    
    private func endpointUpdateMany(tableName: String, upsert: String, find: String, data: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(upsert            , forKey: "upsert")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(data            , forKey: "data")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/updateMany", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointUpdateMany(tableName: tableName, upsert: upsert, find: find, data: data, completion: completion,force: false)
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


    public func endpointDeleteOne(tableName: String, find: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete?,String?) -> Void) {
        endpointDeleteOne(tableName: tableName, find: find, completion: completion,force: true)
    }
    
    private func endpointDeleteOne(tableName: String, find: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/deleteOne", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointDeleteOne(tableName: tableName, find: find, completion: completion,force: false)
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


    public func endpointDeleteMany(tableName: String, find: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete?,String?) -> Void) {
        endpointDeleteMany(tableName: tableName, find: find, completion: completion,force: true)
    }
    
    private func endpointDeleteMany(tableName: String, find: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/deleteMany", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointDelete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointDeleteMany(tableName: tableName, find: find, completion: completion,force: false)
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


    public func endpointFind(tableName: String, find: String, projection: String, sort: String, skip: String, limit: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointFind(tableName: tableName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, completion: completion,force: true)
    }
    
    private func endpointFind(tableName: String, find: String, projection: String, sort: String, skip: String, limit: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(projection            , forKey: "projection")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(skip            , forKey: "skip")
                    params.updateValue(limit            , forKey: "limit")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/find", params, completion: { (result, error) in
            do{
                if let result = result {
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let webResult = webServiceResult.init()
                    webResult.parseJsonResult(dictionary)
                    if webResult.status == PublicValue.status_success {
                        completion(webResult,nil)
                    } else {
                        if webResult.code == 401 && force {
                            self.endpointFind(tableName: tableName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, completion: completion,force: true)
                        }else{
                            completion(webResult,webResult.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointCount(tableName: String, find: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointCount?,String?) -> Void) {
        endpointCount(tableName: tableName, find: find, completion: completion,force: true)
    }
    
    private func endpointCount(tableName: String, find: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointCount?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/count", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointCount(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_EndPointCount
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointCount(tableName: tableName, find: find, completion: completion,force: false)
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


    public func endpointQuery(queryName: String, find: String, projection: String, sort: String, skip: String, limit: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointQuery(queryName: queryName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, completion: completion,force: true)
    }
    
    private func endpointQuery(queryName: String, find: String, projection: String, sort: String, skip: String, limit: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(queryName            , forKey: "queryName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(projection            , forKey: "projection")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(skip            , forKey: "skip")
                    params.updateValue(limit            , forKey: "limit")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/query/"+queryName+"", params, completion: { (result, error) in
            do{
                if let result = result {
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let webResult = webServiceResult.init()
                    webResult.parseJsonResult(dictionary)
                    if webResult.status == PublicValue.status_success {
                        completion(webResult,nil)
                    } else {
                        if webResult.code == 401 && force {
                            self.endpointQuery(queryName: queryName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, completion: completion,force: true)
                        }else{
                            completion(webResult,webResult.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


}
