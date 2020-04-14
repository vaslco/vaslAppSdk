import Foundation

protocol AvService {

    func getSport(id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetSportApi?,String?) -> Void)

    func listSport(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportApi?,String?) -> Void)

    func listFederation(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi?,String?) -> Void)

    func listSportEquipment(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi?,String?) -> Void)

    func listMeal(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi?,String?) -> Void)

    func listPhrase(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi?,String?) -> Void)

    func listFoodPackage(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi?,String?) -> Void)

    func listExercise(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void)

    func listAvCourse(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void)

    func listAvCoachCourse(sort: String, order: String, page: String, coachId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void)

    func listAvCoachOfSport(sort: String, order: String, page: String, sportId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void)

    func hireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func declineRequest(athleteId: String, coachSportCourseId: String, courseName: String, declineReason: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func acceptRequest(athleteId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func listAthleteRequestsForCoach(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void)

    func listAthleteForCoach(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void)

    func listCourseQuestions(sort: String, order: String, page: String, coachCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseQuestionPackage?,String?) -> Void)


}


public class AvServiceImpl  : AvService {


    public func getSport(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetSportApi?,String?) -> Void) {
        getSport(id: id, completion: completion,force: true)
    }
    
    private func getSport(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetSportApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/get/sport", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetSportApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetSportApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getSport(id: id, completion: completion,force: false)
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


    public func listSport(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportApi?,String?) -> Void) {
        listSport(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listSport(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/sport", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listSport(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listFederation(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi?,String?) -> Void) {
        listFederation(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listFederation(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/federation", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listFederation(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listSportEquipment(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi?,String?) -> Void) {
        listSportEquipment(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listSportEquipment(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/sportEquipment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listSportEquipment(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listMeal(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi?,String?) -> Void) {
        listMeal(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listMeal(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/meal", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listMeal(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listPhrase(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi?,String?) -> Void) {
        listPhrase(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listPhrase(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/phrase", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listPhrase(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listFoodPackage(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi?,String?) -> Void) {
        listFoodPackage(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listFoodPackage(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/foodPackage", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listFoodPackage(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listExercise(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void) {
        listExercise(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listExercise(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/exercise", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listExercise(sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func listAvCourse(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void) {
        listAvCourse(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAvCourse(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/course", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAvCourse(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func listAvCoachCourse(sort: String, order: String, page: String, coachId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void) {
        listAvCoachCourse(sort: sort, order: order, page: page, coachId: coachId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAvCoachCourse(sort: String, order: String, page: String, coachId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(coachId            , forKey: "coachId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/coachCourse", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAvCoachCourse(sort: sort, order: order, page: page, coachId: coachId, sessionId: sessionId, completion: completion,force: false)
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


    public func listAvCoachOfSport(sort: String, order: String, page: String, sportId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void) {
        listAvCoachOfSport(sort: sort, order: order, page: page, sportId: sportId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAvCoachOfSport(sort: String, order: String, page: String, sportId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sportId            , forKey: "sportId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/coachOfSport", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAvCoachOfSport(sort: sort, order: order, page: page, sportId: sportId, sessionId: sessionId, completion: completion,force: false)
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


    public func hireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        hireCoach(coachId: coachId, coachSportCourseId: coachSportCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func hireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(coachId            , forKey: "coachId")
                    params.updateValue(coachSportCourseId            , forKey: "coachSportCourseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/hire/coach", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.hireCoach(coachId: coachId, coachSportCourseId: coachSportCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: false)
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


    public func declineRequest(athleteId: String, coachSportCourseId: String, courseName: String, declineReason: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        declineRequest(athleteId: athleteId, coachSportCourseId: coachSportCourseId, courseName: courseName, declineReason: declineReason, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func declineRequest(athleteId: String, coachSportCourseId: String, courseName: String, declineReason: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(athleteId            , forKey: "athleteId")
                    params.updateValue(coachSportCourseId            , forKey: "coachSportCourseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(declineReason            , forKey: "declineReason")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/decline/request", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.declineRequest(athleteId: athleteId, coachSportCourseId: coachSportCourseId, courseName: courseName, declineReason: declineReason, sessionId: sessionId, completion: completion,force: false)
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


    public func acceptRequest(athleteId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        acceptRequest(athleteId: athleteId, coachSportCourseId: coachSportCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func acceptRequest(athleteId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(athleteId            , forKey: "athleteId")
                    params.updateValue(coachSportCourseId            , forKey: "coachSportCourseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/accept/request", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.acceptRequest(athleteId: athleteId, coachSportCourseId: coachSportCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: false)
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


    public func listAthleteRequestsForCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void) {
        listAthleteRequestsForCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAthleteRequestsForCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/athleteRequest", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAthleteRequestsForCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func listAthleteForCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void) {
        listAthleteForCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAthleteForCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/athlete", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAthleteForCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func listCourseQuestions(sort: String, order: String, page: String, coachCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseQuestionPackage?,String?) -> Void) {
        listCourseQuestions(sort: sort, order: order, page: page, coachCourseId: coachCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listCourseQuestions(sort: String, order: String, page: String, coachCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseQuestionPackage?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(coachCourseId            , forKey: "coachCourseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/courseQuestion", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseQuestionPackage(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseQuestionPackage
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCourseQuestions(sort: sort, order: order, page: page, coachCourseId: coachCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: false)
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
