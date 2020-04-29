import Foundation

protocol PazhServiceV1 {

    func helloWorld(title: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_HelloWorld?,String?) -> Void)

    func chargeRequest(phoneNumber: String, amount: String, op: String, transactionTime: String, insertTime: String, authority: String, status: String, email: String, description: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy?,String?) -> Void)

    func leagueLeaderboard(sessionId: String, leagueId: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueLeaderboardGet?,String?) -> Void)

    func leageAnswer(leagueId: String, questionId: String, questionNum: String, answer: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_Answer?,String?) -> Void)

    func leagueGetRegister(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void)

    func postImageCreate(sessionId: String, cover: NSData, title: String, titleEnglish: String, description: String, descriptionEnglish: String, url: String, number: String, email: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func postImageUpdate(sessionId: String, id: String, cover: NSData, title: String, titleEnglish: String, description: String, descriptionEnglish: String, url: String, number: String, email: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func postImageDelete(sessionId: String, id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDelete?,String?) -> Void)

    func postImageGet(sessionId: String, id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageGet?,String?) -> Void)

    func postImageList(sessionId: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList?,String?) -> Void)

    func postImageMyList(sessionId: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList?,String?) -> Void)

    func postImageLikeAdd(sessionId: String, id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeAdd?,String?) -> Void)

    func postImageLikeRemove(sessionId: String, id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeRemove?,String?) -> Void)

    func postImageDislikeAdd(sessionId: String, id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeAdd?,String?) -> Void)

    func postImageDislikeRemove(sessionId: String, id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeRemove?,String?) -> Void)

    func chargeList(subscriberId: String, order: String, page: String, limit: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeList?,String?) -> Void)

    func chargeCheckTransaction(transactionId: String, authority: String, status: String, amount: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy?,String?) -> Void)

    func leagueGet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueGet?,String?) -> Void)

    func leagueRewardList(id: String, leagueId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_RewardList?,String?) -> Void)

    func leagueRegister(leagueId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void)

    func leagueQuestionNext(leagueId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_QuestionGet?,String?) -> Void)

    func leagueList(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void)

    func subscriberList(sessionId: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberList?,String?) -> Void)

    func subscriberMyProfile(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberUserProfile(sessionId: String, subscriberId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberUpdate(sessionId: String, nickName: String, firstName: String, lastName: String, image: NSData, gender: String, birthDate: String, email: String,completion : @escaping (webServiceResult?,String?) -> Void)


}


public class PazhServiceV1Impl  : PazhServiceV1 {


    public func helloWorld(title: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_HelloWorld?,String?) -> Void) {
        helloWorld(title: title, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func helloWorld(title: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_HelloWorld?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/helloword", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_HelloWorld(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_HelloWorld
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.helloWorld(title: title, sessionId: sessionId, completion: completion,force: false)
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


    public func chargeRequest(phoneNumber: String, amount: String, op: String, transactionTime: String, insertTime: String, authority: String, status: String, email: String, description: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy?,String?) -> Void) {
        chargeRequest(phoneNumber: phoneNumber, amount: amount, op: op, transactionTime: transactionTime, insertTime: insertTime, authority: authority, status: status, email: email, description: description, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func chargeRequest(phoneNumber: String, amount: String, op: String, transactionTime: String, insertTime: String, authority: String, status: String, email: String, description: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(phoneNumber            , forKey: "phoneNumber")
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(op            , forKey: "op")
                    params.updateValue(transactionTime            , forKey: "transactionTime")
                    params.updateValue(insertTime            , forKey: "insertTime")
                    params.updateValue(authority            , forKey: "authority")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/charge/request", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.chargeRequest(phoneNumber: phoneNumber, amount: amount, op: op, transactionTime: transactionTime, insertTime: insertTime, authority: authority, status: status, email: email, description: description, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueLeaderboard(sessionId: String, leagueId: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueLeaderboardGet?,String?) -> Void) {
        leagueLeaderboard(sessionId: sessionId, leagueId: leagueId, page: page, completion: completion,force: true)
    }
    
    private func leagueLeaderboard(sessionId: String, leagueId: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueLeaderboardGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/leaderboard", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueLeaderboardGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueLeaderboardGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueLeaderboard(sessionId: sessionId, leagueId: leagueId, page: page, completion: completion,force: false)
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


    public func leageAnswer(leagueId: String, questionId: String, questionNum: String, answer: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_Answer?,String?) -> Void) {
        leageAnswer(leagueId: leagueId, questionId: questionId, questionNum: questionNum, answer: answer, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leageAnswer(leagueId: String, questionId: String, questionNum: String, answer: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_Answer?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(questionId            , forKey: "questionId")
                    params.updateValue(questionNum            , forKey: "questionNum")
                    params.updateValue(answer            , forKey: "answer")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/answer", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_Answer(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_Answer
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leageAnswer(leagueId: leagueId, questionId: questionId, questionNum: questionNum, answer: answer, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueGetRegister(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void) {
        leagueGetRegister(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leagueGetRegister(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/register/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueGetRegister(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func postImageCreate(sessionId: String, cover: NSData, title: String, titleEnglish: String, description: String, descriptionEnglish: String, url: String, number: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        postImageCreate(sessionId: sessionId, cover: cover, title: title, titleEnglish: titleEnglish, description: description, descriptionEnglish: descriptionEnglish, url: url, number: number, email: email, completion: completion,force: true)
    }
    
    private func postImageCreate(sessionId: String, cover: NSData, title: String, titleEnglish: String, description: String, descriptionEnglish: String, url: String, number: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(cover            , forKey: "cover")
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(titleEnglish            , forKey: "titleEnglish")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(descriptionEnglish            , forKey: "descriptionEnglish")
                    params.updateValue(url            , forKey: "url")
                    params.updateValue(number            , forKey: "number")
                    params.updateValue(email            , forKey: "email")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/create", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageCreate(sessionId: sessionId, cover: cover, title: title, titleEnglish: titleEnglish, description: description, descriptionEnglish: descriptionEnglish, url: url, number: number, email: email, completion: completion,force: false)
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


    public func postImageUpdate(sessionId: String, id: String, cover: NSData, title: String, titleEnglish: String, description: String, descriptionEnglish: String, url: String, number: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        postImageUpdate(sessionId: sessionId, id: id, cover: cover, title: title, titleEnglish: titleEnglish, description: description, descriptionEnglish: descriptionEnglish, url: url, number: number, email: email, completion: completion,force: true)
    }
    
    private func postImageUpdate(sessionId: String, id: String, cover: NSData, title: String, titleEnglish: String, description: String, descriptionEnglish: String, url: String, number: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(cover            , forKey: "cover")
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(titleEnglish            , forKey: "titleEnglish")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(descriptionEnglish            , forKey: "descriptionEnglish")
                    params.updateValue(url            , forKey: "url")
                    params.updateValue(number            , forKey: "number")
                    params.updateValue(email            , forKey: "email")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageUpdate(sessionId: sessionId, id: id, cover: cover, title: title, titleEnglish: titleEnglish, description: description, descriptionEnglish: descriptionEnglish, url: url, number: number, email: email, completion: completion,force: false)
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


    public func postImageDelete(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDelete?,String?) -> Void) {
        postImageDelete(sessionId: sessionId, id: id, completion: completion,force: true)
    }
    
    private func postImageDelete(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDelete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/delete", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDelete(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDelete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageDelete(sessionId: sessionId, id: id, completion: completion,force: false)
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


    public func postImageGet(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageGet?,String?) -> Void) {
        postImageGet(sessionId: sessionId, id: id, completion: completion,force: true)
    }
    
    private func postImageGet(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageGet(sessionId: sessionId, id: id, completion: completion,force: false)
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


    public func postImageList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList?,String?) -> Void) {
        postImageList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func postImageList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func postImageMyList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList?,String?) -> Void) {
        postImageMyList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func postImageMyList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/mylist", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageMyList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func postImageLikeAdd(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeAdd?,String?) -> Void) {
        postImageLikeAdd(sessionId: sessionId, id: id, completion: completion,force: true)
    }
    
    private func postImageLikeAdd(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/like/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageLikeAdd(sessionId: sessionId, id: id, completion: completion,force: false)
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


    public func postImageLikeRemove(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeRemove?,String?) -> Void) {
        postImageLikeRemove(sessionId: sessionId, id: id, completion: completion,force: true)
    }
    
    private func postImageLikeRemove(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/like/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageLikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageLikeRemove(sessionId: sessionId, id: id, completion: completion,force: false)
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


    public func postImageDislikeAdd(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeAdd?,String?) -> Void) {
        postImageDislikeAdd(sessionId: sessionId, id: id, completion: completion,force: true)
    }
    
    private func postImageDislikeAdd(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/dislike/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageDislikeAdd(sessionId: sessionId, id: id, completion: completion,force: false)
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


    public func postImageDislikeRemove(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeRemove?,String?) -> Void) {
        postImageDislikeRemove(sessionId: sessionId, id: id, completion: completion,force: true)
    }
    
    private func postImageDislikeRemove(sessionId: String, id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/post/image/dislike/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_PostImageDislikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.postImageDislikeRemove(sessionId: sessionId, id: id, completion: completion,force: false)
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


    public func chargeList(subscriberId: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeList?,String?) -> Void) {
        chargeList(subscriberId: subscriberId, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func chargeList(subscriberId: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(limit            , forKey: "limit")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/subscriber/charge/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.chargeList(subscriberId: subscriberId, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: false)
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


    public func chargeCheckTransaction(transactionId: String, authority: String, status: String, amount: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy?,String?) -> Void) {
        chargeCheckTransaction(transactionId: transactionId, authority: authority, status: status, amount: amount, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func chargeCheckTransaction(transactionId: String, authority: String, status: String, amount: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(transactionId            , forKey: "transactionId")
                    params.updateValue(authority            , forKey: "authority")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(amount            , forKey: "amount")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/subscriber/charge/check/transaction", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_ChargeBuy
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.chargeCheckTransaction(transactionId: transactionId, authority: authority, status: status, amount: amount, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueGet?,String?) -> Void) {
        leagueGet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leagueGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueGet(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueRewardList(id: String, leagueId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_RewardList?,String?) -> Void) {
        leagueRewardList(id: id, leagueId: leagueId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leagueRewardList(id: String, leagueId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_RewardList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/reward/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_RewardList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_RewardList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueRewardList(id: id, leagueId: leagueId, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueRegister(leagueId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void) {
        leagueRegister(leagueId: leagueId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leagueRegister(leagueId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueRegister(leagueId: leagueId, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueQuestionNext(leagueId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_QuestionGet?,String?) -> Void) {
        leagueQuestionNext(leagueId: leagueId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leagueQuestionNext(leagueId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_QuestionGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/question/next", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_QuestionGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_QuestionGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueQuestionNext(leagueId: leagueId, sessionId: sessionId, completion: completion,force: false)
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


    public func leagueList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void) {
        leagueList(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func leagueList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/league/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_LeagueList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueList(sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberList?,String?) -> Void) {
        subscriberList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func subscriberList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/subscriber/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberList(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func subscriberMyProfile(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberMyProfile(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberMyProfile(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/subscriber/myprofile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberMyProfile(sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberUserProfile(sessionId: String, subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberUserProfile(sessionId: sessionId, subscriberId: subscriberId, completion: completion,force: true)
    }
    
    private func subscriberUserProfile(sessionId: String, subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(subscriberId            , forKey: "subscriberId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/pazh/subscriber/userprofile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Pazh_Proto_Holder_SubscriberGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUserProfile(sessionId: sessionId, subscriberId: subscriberId, completion: completion,force: false)
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


    public func subscriberUpdate(sessionId: String, nickName: String, firstName: String, lastName: String, image: NSData, gender: String, birthDate: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        subscriberUpdate(sessionId: sessionId, nickName: nickName, firstName: firstName, lastName: lastName, image: image, gender: gender, birthDate: birthDate, email: email, completion: completion,force: true)
    }
    
    private func subscriberUpdate(sessionId: String, nickName: String, firstName: String, lastName: String, image: NSData, gender: String, birthDate: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(firstName            , forKey: "firstName")
                    params.updateValue(lastName            , forKey: "lastName")
                    params.updateValue(image            , forKey: "image")
                    params.updateValue(gender            , forKey: "gender")
                    params.updateValue(birthDate            , forKey: "birthDate")
                    params.updateValue(email            , forKey: "email")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/pazh/subscriber/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUpdate(sessionId: sessionId, nickName: nickName, firstName: firstName, lastName: lastName, image: image, gender: gender, birthDate: birthDate, email: email, completion: completion,force: false)
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
