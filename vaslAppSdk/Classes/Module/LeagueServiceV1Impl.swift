import Foundation

protocol LeagueServiceV1 {

    func leagueList(sessionId: String,sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList?,String?) -> Void)

    func leagueGet(sessionId: String,leagueId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueGet?,String?) -> Void)

    func leagueRewardList(sessionId: String,leagueId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_RewardList?,String?) -> Void)

    func leagueRegister(sessionId: String,leagueId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList?,String?) -> Void)

    func leagueQuestionNext(sessionId: String,leagueId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_QuestionGet?,String?) -> Void)

    func leagueAnswer(sessionId: String,leagueId: String, questionId: String, answer: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_CorrectAnswer?,String?) -> Void)


}


public class LeagueServiceV1Impl  : LeagueServiceV1 {


    public func leagueList(sessionId: String,sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList?,String?) -> Void) {
        leagueList(sessionId : sessionId,sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func leagueList(sessionId: String,sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/leagues/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueList(sessionId: sessionId,sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func leagueGet(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueGet?,String?) -> Void) {
        leagueGet(sessionId: sessionId,leagueId: leagueId, completion: completion,force: true)
    }
    
    private func leagueGet(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/leagues/league/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueGet(sessionId: sessionId,leagueId: leagueId, completion: completion,force: false)
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


    public func leagueRewardList(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_RewardList?,String?) -> Void) {
        leagueRewardList(sessionId: sessionId,leagueId: leagueId, completion: completion,force: true)
    }
    
    private func leagueRewardList(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_RewardList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/leagues/league/reward/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_RewardList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_RewardList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueRewardList(sessionId: sessionId,leagueId: leagueId, completion: completion,force: false)
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


    public func leagueRegister(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList?,String?) -> Void) {
        leagueRegister(sessionId: sessionId,leagueId: leagueId, completion: completion,force: true)
    }
    
    private func leagueRegister(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/leagues/league/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_LeagueList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueRegister(sessionId: sessionId,leagueId: leagueId, completion: completion,force: false)
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


    public func leagueQuestionNext(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_QuestionGet?,String?) -> Void) {
        leagueQuestionNext(sessionId: sessionId,leagueId: leagueId, completion: completion,force: true)
    }
    
    private func leagueQuestionNext(sessionId: String,leagueId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_QuestionGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/leagues/league/question/next", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_QuestionGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_QuestionGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueQuestionNext(sessionId: sessionId,leagueId: leagueId, completion: completion,force: false)
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


    public func leagueAnswer(sessionId: String,leagueId: String, questionId: String, answer: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_CorrectAnswer?,String?) -> Void) {
        leagueAnswer(sessionId: sessionId,leagueId: leagueId, questionId: questionId, answer: answer, completion: completion,force: true)
    }
    
    private func leagueAnswer(sessionId: String,leagueId: String, questionId: String, answer: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_CorrectAnswer?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(leagueId            , forKey: "leagueId")
                    params.updateValue(questionId            , forKey: "questionId")
                    params.updateValue(answer            , forKey: "answer")
                    params.updateValue(sessionId, forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/leagues/league/answer", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_CorrectAnswer(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_League_Global_Proto_Holder_CorrectAnswer
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.leagueAnswer(sessionId: sessionId,leagueId: leagueId, questionId: questionId, answer: answer, completion: completion,force: false)
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
