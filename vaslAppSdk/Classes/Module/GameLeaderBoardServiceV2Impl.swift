import Foundation

protocol GameLeaderBoardServiceV2 {

    func getLeaderboard(pointId: String, sortDescending: String, tag: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void)

    func getLeaderboardTop10(pointId: String, sortDescending: String, tag: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void)


}


public class GameLeaderBoardServiceV2Impl  : GameLeaderBoardServiceV2 {


    public func getLeaderboard(pointId: String, sortDescending: String, tag: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void) {
        getLeaderboard(pointId: pointId, sortDescending: sortDescending, tag: tag, completion: completion,force: true)
    }
    
    private func getLeaderboard(pointId: String, sortDescending: String, tag: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(pointId            , forKey: "pointId")
                    params.updateValue(sortDescending            , forKey: "sortDescending")
                    params.updateValue(tag            , forKey: "tag")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/leaderboard/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getLeaderboard(pointId: pointId, sortDescending: sortDescending, tag: tag, completion: completion,force: false)
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


    public func getLeaderboardTop10(pointId: String, sortDescending: String, tag: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void) {
        getLeaderboardTop10(pointId: pointId, sortDescending: sortDescending, tag: tag, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getLeaderboardTop10(pointId: String, sortDescending: String, tag: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(pointId            , forKey: "pointId")
                    params.updateValue(sortDescending            , forKey: "sortDescending")
                    params.updateValue(tag            , forKey: "tag")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/game/leaderboard/top10", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard(serializedData: result) as Com_Vasl_Vaslapp_Modules_Game_Global_Proto_Holder_GetLeaderBoard
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getLeaderboardTop10(pointId: pointId, sortDescending: sortDescending, tag: tag, sessionId: sessionId, completion: completion,force: false)
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
