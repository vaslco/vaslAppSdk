import Foundation

protocol DynamicTableServiceEndpointsV1 {

    func endpointUpdateMany(tableName: String, upsert: String, find: String, data: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointDeleteOne(tableName: String, find: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointUpdateOne(tableName: String, upsert: String, find: String, data: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointInsert(tableName: String, data: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointDeleteMany(tableName: String, find: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointFind(tableName: String, find: String, projection: String, sort: String, skip: String, limit: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointCount(tableName: String, find: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func endpointQuery(queryName: String, find: String, projection: String, sort: String, skip: String, limit: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)


}


public class DynamicTableServiceEndpointsV1Impl  : DynamicTableServiceEndpointsV1 {


    public func endpointUpdateMany(tableName: String, upsert: String, find: String, data: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointUpdateMany(tableName: tableName, upsert: upsert, find: find, data: data, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointUpdateMany(tableName: String, upsert: String, find: String, data: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(upsert            , forKey: "upsert")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/updateMany", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointUpdateMany(tableName: tableName, upsert: upsert, find: find, data: data, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointDeleteOne(tableName: String, find: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointDeleteOne(tableName: tableName, find: find, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointDeleteOne(tableName: String, find: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/deleteOne", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointDeleteOne(tableName: tableName, find: find, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointUpdateOne(tableName: String, upsert: String, find: String, data: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointUpdateOne(tableName: tableName, upsert: upsert, find: find, data: data, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointUpdateOne(tableName: String, upsert: String, find: String, data: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(upsert            , forKey: "upsert")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/updateOne", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointUpdateOne(tableName: tableName, upsert: upsert, find: find, data: data, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointInsert(tableName: String, data: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointInsert(tableName: tableName, data: data, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointInsert(tableName: String, data: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/insert", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointInsert(tableName: tableName, data: data, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointDeleteMany(tableName: String, find: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointDeleteMany(tableName: tableName, find: find, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointDeleteMany(tableName: String, find: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/deleteMany", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointDeleteMany(tableName: tableName, find: find, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointFind(tableName: String, find: String, projection: String, sort: String, skip: String, limit: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointFind(tableName: tableName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointFind(tableName: String, find: String, projection: String, sort: String, skip: String, limit: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(projection            , forKey: "projection")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(skip            , forKey: "skip")
                    params.updateValue(limit            , forKey: "limit")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/find", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointFind(tableName: tableName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointCount(tableName: String, find: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointCount(tableName: tableName, find: find, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointCount(tableName: String, find: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(tableName            , forKey: "tableName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/"+tableName+"/count", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointCount(tableName: tableName, find: find, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


    public func endpointQuery(queryName: String, find: String, projection: String, sort: String, skip: String, limit: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        endpointQuery(queryName: queryName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endpointQuery(queryName: String, find: String, projection: String, sort: String, skip: String, limit: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(queryName            , forKey: "queryName")
                    params.updateValue(find            , forKey: "find")
                    params.updateValue(projection            , forKey: "projection")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(skip            , forKey: "skip")
                    params.updateValue(limit            , forKey: "limit")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/endpoints/query/"+queryName+"", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endpointQuery(queryName: queryName, find: find, projection: projection, sort: sort, skip: skip, limit: limit, sessionId: sessionId, completion: completion,force: false)
                        }else{
                            completion(serviceResponse,serviceResponse.message)
                        }
                    }
                }
            }catch{
                completion(nil,"")
            }
        }, force)
    }


}
