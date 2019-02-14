import Foundation

protocol FileManagerServiceV1 {

    func createDirectory(path: String, name: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryCreate?,String?) -> Void)

    func listDirectory(path: String, nextPagekey: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryList?,String?) -> Void)

    func deleteDirectory(path: String, name: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryDelete?,String?) -> Void)

    func fileUpload(path: String, file: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileUpload?,String?) -> Void)

    func fileRemove(path: String, name: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileDelete?,String?) -> Void)


}


public class FileManagerServiceV1Impl  : FileManagerServiceV1 {


    public func createDirectory(path: String, name: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryCreate?,String?) -> Void) {
        createDirectory(path: path, name: name, completion: completion,force: true)
    }
    
    private func createDirectory(path: String, name: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryCreate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(path            , forKey: "path")
                    params.updateValue(name            , forKey: "name")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/filemanager/create/directory", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryCreate(serializedData: result) as Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryCreate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createDirectory(path: path, name: name, completion: completion,force: false)
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


    public func listDirectory(path: String, nextPagekey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryList?,String?) -> Void) {
        listDirectory(path: path, nextPagekey: nextPagekey, completion: completion,force: true)
    }
    
    private func listDirectory(path: String, nextPagekey: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(path            , forKey: "path")
                    params.updateValue(nextPagekey            , forKey: "nextPagekey")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/filemanager/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryList(serializedData: result) as Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listDirectory(path: path, nextPagekey: nextPagekey, completion: completion,force: false)
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


    public func deleteDirectory(path: String, name: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryDelete?,String?) -> Void) {
        deleteDirectory(path: path, name: name, completion: completion,force: true)
    }
    
    private func deleteDirectory(path: String, name: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryDelete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(path            , forKey: "path")
                    params.updateValue(name            , forKey: "name")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/filemanager/delete/directory", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryDelete(serializedData: result) as Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_DirectoryDelete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.deleteDirectory(path: path, name: name, completion: completion,force: false)
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


    public func fileUpload(path: String, file: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileUpload?,String?) -> Void) {
        fileUpload(path: path, file: file, completion: completion,force: true)
    }
    
    private func fileUpload(path: String, file: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileUpload?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(path            , forKey: "path")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/filemanager/upload/file", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileUpload(serializedData: result) as Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileUpload
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.fileUpload(path: path, file: file, completion: completion,force: false)
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


    public func fileRemove(path: String, name: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileDelete?,String?) -> Void) {
        fileRemove(path: path, name: name, completion: completion,force: true)
    }
    
    private func fileRemove(path: String, name: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileDelete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(path            , forKey: "path")
                    params.updateValue(name            , forKey: "name")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/filemanager/delete/file", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileDelete(serializedData: result) as Com_Vasl_Vaslapp_Modules_File_Global_Proto_Holder_FileDelete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.fileRemove(path: path, name: name, completion: completion,force: false)
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
