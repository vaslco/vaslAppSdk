import Foundation

protocol SupportServiceV1 {

    func createIssue(parentId: String, subject: String, description: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateIssue?,String?) -> Void)

    func listIssue(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue?,String?) -> Void)

    func editIssue(id: String, subject: String, description: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_EditIssue?,String?) -> Void)

    func removeIssue(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue?,String?) -> Void)

    func createThread(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThread?,String?) -> Void)

    func listMyThreads(page: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads?,String?) -> Void)

    func getMyThreadDataById(threadId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData?,String?) -> Void)

    func changeMyThreadStatus(threadId: String, status: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus?,String?) -> Void)

    func createThreadConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThreadConversation?,String?) -> Void)

    func listMyThreadConversations(threadId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations?,String?) -> Void)

    func readThreadConversation(messageId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation?,String?) -> Void)

    func directGetThread(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread?,String?) -> Void)


}


public class SupportServiceV1Impl  : SupportServiceV1 {


    public func createIssue(parentId: String, subject: String, description: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateIssue?,String?) -> Void) {
        createIssue(parentId: parentId, subject: subject, description: description, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createIssue(parentId: String, subject: String, description: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(parentId            , forKey: "parentId")
                    params.updateValue(subject            , forKey: "subject")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/createIssue", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateIssue(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateIssue
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createIssue(parentId: parentId, subject: subject, description: description, sessionId: sessionId, completion: completion,force: false)
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


    public func listIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue?,String?) -> Void) {
        listIssue(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/listIssue", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listIssue(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func editIssue(id: String, subject: String, description: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_EditIssue?,String?) -> Void) {
        editIssue(id: id, subject: subject, description: description, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func editIssue(id: String, subject: String, description: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_EditIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(subject            , forKey: "subject")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/editIssue", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_EditIssue(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_EditIssue
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.editIssue(id: id, subject: subject, description: description, sessionId: sessionId, completion: completion,force: false)
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


    public func removeIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue?,String?) -> Void) {
        removeIssue(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func removeIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/removeIssue", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.removeIssue(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func createThread(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThread?,String?) -> Void) {
        createThread(issueId: issueId, priority: priority, subject: subject, description: description, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createThread(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThread?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(issueId            , forKey: "issueId")
                    params.updateValue(priority            , forKey: "priority")
                    params.updateValue(subject            , forKey: "subject")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/createThread", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThread(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThread
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createThread(issueId: issueId, priority: priority, subject: subject, description: description, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyThreads(page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads?,String?) -> Void) {
        listMyThreads(page: page, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyThreads(page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/listMyThreads", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMyThreads(page: page, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func getMyThreadDataById(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData?,String?) -> Void) {
        getMyThreadDataById(threadId: threadId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getMyThreadDataById(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/getMyThreadDataById", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getMyThreadDataById(threadId: threadId, sessionId: sessionId, completion: completion,force: false)
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


    public func changeMyThreadStatus(threadId: String, status: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus?,String?) -> Void) {
        changeMyThreadStatus(threadId: threadId, status: status, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func changeMyThreadStatus(threadId: String, status: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/changeMyThreadStatus", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.changeMyThreadStatus(threadId: threadId, status: status, sessionId: sessionId, completion: completion,force: false)
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


    public func createThreadConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThreadConversation?,String?) -> Void) {
        createThreadConversation(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createThreadConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThreadConversation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/createThreadConversation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThreadConversation(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateThreadConversation
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createThreadConversation(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyThreadConversations(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations?,String?) -> Void) {
        listMyThreadConversations(threadId: threadId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyThreadConversations(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/listMyThreadConversations", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMyThreadConversations(threadId: threadId, sessionId: sessionId, completion: completion,force: false)
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


    public func readThreadConversation(messageId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation?,String?) -> Void) {
        readThreadConversation(messageId: messageId, completion: completion,force: true)
    }
    
    private func readThreadConversation(messageId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(messageId            , forKey: "messageId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/readThreadConversation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.readThreadConversation(messageId: messageId, completion: completion,force: false)
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


    public func directGetThread(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread?,String?) -> Void) {
        directGetThread(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func directGetThread(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/directGetThread", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.directGetThread(sessionId: sessionId, completion: completion,force: false)
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
