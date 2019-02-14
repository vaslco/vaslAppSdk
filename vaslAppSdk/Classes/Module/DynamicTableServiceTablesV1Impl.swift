import Foundation

protocol DynamicTableServiceTablesV1 {

    func tablesList(completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesList?,String?) -> Void)

    func tablesCreate(name: String, description: String, sessionRequired: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesCreate?,String?) -> Void)

    func tablesEdit(id: String, name: String, description: String, sessionRequired: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesEdit?,String?) -> Void)

    func tablesDrop(id: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDrop?,String?) -> Void)

    func tablesDatatypes(completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDataTypes?,String?) -> Void)

    func tablesSchemaList(id: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaList?,String?) -> Void)

    func tablesSchemaAlter(id: String, fields: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaAlter?,String?) -> Void)

    func queryCreate(name: String, fields: String, joins: String, sessionRequired: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_QueryCreate?,String?) -> Void)


}


public class DynamicTableServiceTablesV1Impl  : DynamicTableServiceTablesV1 {


    public func tablesList(completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesList?,String?) -> Void) {
        tablesList( completion: completion,force: true)
    }
    
    private func tablesList(completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesList?,String?) -> Void,force : Bool) {
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/list", Dictionary<String,String>(), completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesList( completion: completion,force: false)
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


    public func tablesCreate(name: String, description: String, sessionRequired: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesCreate?,String?) -> Void) {
        tablesCreate(name: name, description: description, sessionRequired: sessionRequired, completion: completion,force: true)
    }
    
    private func tablesCreate(name: String, description: String, sessionRequired: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesCreate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(name            , forKey: "name")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(sessionRequired            , forKey: "sessionRequired")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/create", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesCreate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesCreate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesCreate(name: name, description: description, sessionRequired: sessionRequired, completion: completion,force: false)
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


    public func tablesEdit(id: String, name: String, description: String, sessionRequired: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesEdit?,String?) -> Void) {
        tablesEdit(id: id, name: name, description: description, sessionRequired: sessionRequired, completion: completion,force: true)
    }
    
    private func tablesEdit(id: String, name: String, description: String, sessionRequired: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesEdit?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(name            , forKey: "name")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(sessionRequired            , forKey: "sessionRequired")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/edit", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesEdit(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesEdit
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesEdit(id: id, name: name, description: description, sessionRequired: sessionRequired, completion: completion,force: false)
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


    public func tablesDrop(id: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDrop?,String?) -> Void) {
        tablesDrop(id: id, completion: completion,force: true)
    }
    
    private func tablesDrop(id: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDrop?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/drop", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDrop(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDrop
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesDrop(id: id, completion: completion,force: false)
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


    public func tablesDatatypes(completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDataTypes?,String?) -> Void) {
        tablesDatatypes( completion: completion,force: true)
    }
    
    private func tablesDatatypes(completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDataTypes?,String?) -> Void,force : Bool) {
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/datatypes", Dictionary<String,String>(), completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDataTypes(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesDataTypes
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesDatatypes( completion: completion,force: false)
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


    public func tablesSchemaList(id: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaList?,String?) -> Void) {
        tablesSchemaList(id: id, completion: completion,force: true)
    }
    
    private func tablesSchemaList(id: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/schema/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesSchemaList(id: id, completion: completion,force: false)
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


    public func tablesSchemaAlter(id: String, fields: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaAlter?,String?) -> Void) {
        tablesSchemaAlter(id: id, fields: fields, completion: completion,force: true)
    }
    
    private func tablesSchemaAlter(id: String, fields: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaAlter?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(fields            , forKey: "fields")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/schema/alter", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaAlter(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_TablesSchemaAlter
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.tablesSchemaAlter(id: id, fields: fields, completion: completion,force: false)
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


    public func queryCreate(name: String, fields: String, joins: String, sessionRequired: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_QueryCreate?,String?) -> Void) {
        queryCreate(name: name, fields: fields, joins: joins, sessionRequired: sessionRequired, completion: completion,force: true)
    }
    
    private func queryCreate(name: String, fields: String, joins: String, sessionRequired: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_QueryCreate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(name            , forKey: "name")
                    params.updateValue(fields            , forKey: "fields")
                    params.updateValue(joins            , forKey: "joins")
                    params.updateValue(sessionRequired            , forKey: "sessionRequired")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/dynamictable/tables/query/create", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_QueryCreate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Dynamictable_Global_Proto_Holder_QueryCreate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.queryCreate(name: name, fields: fields, joins: joins, sessionRequired: sessionRequired, completion: completion,force: false)
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
