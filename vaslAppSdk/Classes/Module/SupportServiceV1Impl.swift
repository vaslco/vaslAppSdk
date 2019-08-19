import Foundation

protocol SupportServiceV1 {

    func createIssue(parentId: String, subject: String, description: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_CreateIssue?,String?) -> Void)

    func listIssue(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue?,String?) -> Void)

    func editIssue(id: String, subject: String, description: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_EditIssue?,String?) -> Void)

    func removeIssue(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue?,String?) -> Void)

    func createThread(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func listMyThreads(page: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads?,String?) -> Void)

    func getMyThreadDataById(threadId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData?,String?) -> Void)

    func changeMyThreadStatus(threadId: String, status: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus?,String?) -> Void)

    func createThreadConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func listMyThreadConversations(threadId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations?,String?) -> Void)

    func readThreadConversation(messageId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation?,String?) -> Void)

    func directGetThread(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread?,String?) -> Void)

    func listTicketingIssue(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketingIssue?,String?) -> Void)

    func createTicket(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func getMyTicketDataById(ticketId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetTicketData?,String?) -> Void)

    func listMyTickets(page: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMyTickets?,String?) -> Void)

    func listMyTicketConversations(threadId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketConversations?,String?) -> Void)

    func createTicketConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func listMyMessageCategories(page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMessageCategories?,String?) -> Void)

    func listMyMessageDetails(threadId: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListDetailsOfMessage?,String?) -> Void)

    func getSupportThreadId(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetSupportThreadId?,String?) -> Void)

    func createMessage(threadId: String, message: String, attachment: NSData, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func seenMessageOfConversation(messageId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_SeenMessage?,String?) -> Void)

    func getChatMessages(threadId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetChatMessages?,String?) -> Void)


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


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func listIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue?,String?) -> Void) {
        listIssue(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
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


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func removeIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue?,String?) -> Void) {
        removeIssue(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func removeIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_RemoveIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func createThread(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        createThread(issueId: issueId, priority: priority, subject: subject, description: description, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createThread(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(issueId            , forKey: "issueId")
                    params.updateValue(priority            , forKey: "priority")
                    params.updateValue(subject            , forKey: "subject")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(attachment            , forKey: "attachment")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/createThread", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createThread(issueId: issueId, priority: priority, subject: subject, description: description, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyThreads(page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads?,String?) -> Void) {
        listMyThreads(page: page, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyThreads(page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreads?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func getMyThreadDataById(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData?,String?) -> Void) {
        getMyThreadDataById(threadId: threadId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getMyThreadDataById(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetThreadData?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func changeMyThreadStatus(threadId: String, status: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus?,String?) -> Void) {
        changeMyThreadStatus(threadId: threadId, status: status, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func changeMyThreadStatus(threadId: String, status: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ChangeMyThreadStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func createThreadConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        createThreadConversation(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createThreadConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(attachment            , forKey: "attachment")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/createThreadConversation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createThreadConversation(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyThreadConversations(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations?,String?) -> Void) {
        listMyThreadConversations(threadId: threadId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyThreadConversations(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListThreadConversations?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func readThreadConversation(messageId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation?,String?) -> Void) {
        readThreadConversation(messageId: messageId, completion: completion,force: true)
    }
    
    private func readThreadConversation(messageId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ReadThreadConversation?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(messageId            , forKey: "messageId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func directGetThread(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread?,String?) -> Void) {
        directGetThread(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func directGetThread(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_DirectGetThread?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
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
        }, force,hasNounce)
    }


    public func listTicketingIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketingIssue?,String?) -> Void) {
        listTicketingIssue(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listTicketingIssue(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketingIssue?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/ticketing/listIssue", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketingIssue(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketingIssue
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listTicketingIssue(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func createTicket(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        createTicket(issueId: issueId, priority: priority, subject: subject, description: description, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createTicket(issueId: String, priority: String, subject: String, description: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(issueId            , forKey: "issueId")
                    params.updateValue(priority            , forKey: "priority")
                    params.updateValue(subject            , forKey: "subject")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(attachment            , forKey: "attachment")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/ticketing/createTicket", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createTicket(issueId: issueId, priority: priority, subject: subject, description: description, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func getMyTicketDataById(ticketId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetTicketData?,String?) -> Void) {
        getMyTicketDataById(ticketId: ticketId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getMyTicketDataById(ticketId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetTicketData?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(ticketId            , forKey: "ticketId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/ticketing/getTicketDataById", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetTicketData(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetTicketData
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getMyTicketDataById(ticketId: ticketId, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyTickets(page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMyTickets?,String?) -> Void) {
        listMyTickets(page: page, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyTickets(page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMyTickets?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/listMyTickets", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMyTickets(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMyTickets
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMyTickets(page: page, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyTicketConversations(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketConversations?,String?) -> Void) {
        listMyTicketConversations(threadId: threadId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyTicketConversations(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketConversations?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/ticketing/listMyTicketConersations", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketConversations(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListTicketConversations
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMyTicketConversations(threadId: threadId, sessionId: sessionId, completion: completion,force: false)
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


    public func createTicketConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        createTicketConversation(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createTicketConversation(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(attachment            , forKey: "attachment")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/ticketing/createTicketConversation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createTicketConversation(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyMessageCategories(page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMessageCategories?,String?) -> Void) {
        listMyMessageCategories(page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyMessageCategories(page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMessageCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/messaging/listMyMessageCategories", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMessageCategories(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListMessageCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMyMessageCategories(page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func listMyMessageDetails(threadId: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListDetailsOfMessage?,String?) -> Void) {
        listMyMessageDetails(threadId: threadId, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listMyMessageDetails(threadId: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListDetailsOfMessage?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/messaging/listMyMessageDetails", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListDetailsOfMessage(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_ListDetailsOfMessage
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMyMessageDetails(threadId: threadId, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func getSupportThreadId(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetSupportThreadId?,String?) -> Void) {
        getSupportThreadId(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getSupportThreadId(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetSupportThreadId?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/chatting/getSupportThreadId", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetSupportThreadId(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetSupportThreadId
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getSupportThreadId(sessionId: sessionId, completion: completion,force: false)
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


    public func createMessage(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        createMessage(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createMessage(threadId: String, message: String, attachment: NSData, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(message            , forKey: "message")
                    params.updateValue(attachment            , forKey: "attachment")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/support/chatting/sendMessage", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createMessage(threadId: threadId, message: message, attachment: attachment, sessionId: sessionId, completion: completion,force: false)
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


    public func seenMessageOfConversation(messageId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_SeenMessage?,String?) -> Void) {
        seenMessageOfConversation(messageId: messageId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func seenMessageOfConversation(messageId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_SeenMessage?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(messageId            , forKey: "messageId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/chatting/seenMessage", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_SeenMessage(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_SeenMessage
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.seenMessageOfConversation(messageId: messageId, sessionId: sessionId, completion: completion,force: false)
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


    public func getChatMessages(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetChatMessages?,String?) -> Void) {
        getChatMessages(threadId: threadId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getChatMessages(threadId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetChatMessages?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(threadId            , forKey: "threadId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/support/chatting/getChatMessages", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetChatMessages(serializedData: result) as Com_Vasl_Vaslapp_Modules_Support_Global_Proto_Holder_GetChatMessages
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getChatMessages(threadId: threadId, sessionId: sessionId, completion: completion,force: false)
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
