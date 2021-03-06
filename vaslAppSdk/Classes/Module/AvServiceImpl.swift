import Foundation

protocol AvService {

    func listSport(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel?,String?) -> Void)

    func getSport(id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetSportApi?,String?) -> Void)

    func listFederation(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi?,String?) -> Void)

    func listSportEquipment(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi?,String?) -> Void)

    func listMeal(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi?,String?) -> Void)

    func listPhrase(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi?,String?) -> Void)

    func listFoodPackage(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi?,String?) -> Void)

    func listExercise(sort: String, order: String, page: String, sportId: String, tag: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void)

    func listAvCourse(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void)

    func listAvCoachCourse(sort: String, order: String, page: String, coachId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void)

    func listAvCoachOfSport(sort: String, order: String, page: String, sportId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseApi?,String?) -> Void)

    func hireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func unHireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func declineRequest(athleteId: String, coachSportCourseId: String, courseName: String, declineReason: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func acceptRequest(athleteId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func listAthleteRequestsForCoach(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void)

    func listAthleteForCoach(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void)

    func listCourseQuestions(sort: String, order: String, page: String, coachCourseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListCourseQuestionPackage?,String?) -> Void)

    func answerQuestions(athleteCoachId: String, questionPackageId: String, answers: Array<String>, files: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func listAthleteCoursesOfCoach(sort: String, order: String, page: String, athleteId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourseOfCoach?,String?) -> Void)

    func createProgram(id: String, programs: Array<String>, startProgramDate: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func athleteListForNutritionCoach(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void)

    func createDiet(id: String, diets: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func updateDiet(id: String, diets: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func athleteListForCorrectiveCoach(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void)

    func upateProgram(id: String, programs: Array<String>, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func confirmProgram(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func confirmDiet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void)

    func athleteCourseList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourses?,String?) -> Void)

    func athleteCourseGet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteCourse?,String?) -> Void)

    func athleteProgramGet(courseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthletePrograms?,String?) -> Void)

    func athleteDietGet(courseId: String, courseName: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteDiets?,String?) -> Void)

    func listSportCategories(sort: String, order: String, page: String, parentId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel?,String?) -> Void)

    func getCourseDetail(courseId: String, courseName: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetCourseDetail?,String?) -> Void)


}


public class AvServiceImpl  : AvService {


    public func listSport(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel?,String?) -> Void) {
        listSport(sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func listSport(sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/sport", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel
                    
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


    public func listExercise(sort: String, order: String, page: String, sportId: String, tag: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void) {
        listExercise(sort: sort, order: order, page: page, sportId: sportId, tag: tag, completion: completion,force: true)
    }
    
    private func listExercise(sort: String, order: String, page: String, sportId: String, tag: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sportId            , forKey: "sportId")
                    params.updateValue(tag            , forKey: "tag")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/exercise", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listExercise(sort: sort, order: order, page: page, sportId: sportId, tag: tag, completion: completion,force: false)
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


    public func unHireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        unHireCoach(coachId: coachId, coachSportCourseId: coachSportCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func unHireCoach(coachId: String, coachSportCourseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(coachId            , forKey: "coachId")
                    params.updateValue(coachSportCourseId            , forKey: "coachSportCourseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/unHire/coach", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.unHireCoach(coachId: coachId, coachSportCourseId: coachSportCourseId, courseName: courseName, sessionId: sessionId, completion: completion,force: false)
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


    public func answerQuestions(athleteCoachId: String, questionPackageId: String, answers: Array<String>, files: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        answerQuestions(athleteCoachId: athleteCoachId, questionPackageId: questionPackageId, answers: answers, files: files, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func answerQuestions(athleteCoachId: String, questionPackageId: String, answers: Array<String>, files: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(athleteCoachId            , forKey: "athleteCoachId")
                    params.updateValue(questionPackageId            , forKey: "questionPackageId")
                    params.updateValue(answers            , forKey: "answers")
                    params.updateValue(files            , forKey: "files")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/answer/question", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.answerQuestions(athleteCoachId: athleteCoachId, questionPackageId: questionPackageId, answers: answers, files: files, sessionId: sessionId, completion: completion,force: false)
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


    public func listAthleteCoursesOfCoach(sort: String, order: String, page: String, athleteId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourseOfCoach?,String?) -> Void) {
        listAthleteCoursesOfCoach(sort: sort, order: order, page: page, athleteId: athleteId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAthleteCoursesOfCoach(sort: String, order: String, page: String, athleteId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourseOfCoach?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(athleteId            , forKey: "athleteId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/athleteCourse", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourseOfCoach(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourseOfCoach
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAthleteCoursesOfCoach(sort: sort, order: order, page: page, athleteId: athleteId, sessionId: sessionId, completion: completion,force: false)
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


    public func createProgram(id: String, programs: Array<String>, startProgramDate: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        createProgram(id: id, programs: programs, startProgramDate: startProgramDate, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createProgram(id: String, programs: Array<String>, startProgramDate: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(programs            , forKey: "programs")
                    params.updateValue(startProgramDate            , forKey: "startProgramDate")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/coach/createProgram", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createProgram(id: id, programs: programs, startProgramDate: startProgramDate, sessionId: sessionId, completion: completion,force: false)
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


    public func athleteListForNutritionCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void) {
        athleteListForNutritionCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func athleteListForNutritionCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/athlete/forNutritionCoach", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.athleteListForNutritionCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func createDiet(id: String, diets: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        createDiet(id: id, diets: diets, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func createDiet(id: String, diets: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(diets            , forKey: "diets")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/nutritionCoach/createDiet", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.createDiet(id: id, diets: diets, sessionId: sessionId, completion: completion,force: false)
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


    public func updateDiet(id: String, diets: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        updateDiet(id: id, diets: diets, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func updateDiet(id: String, diets: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(diets            , forKey: "diets")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/correctiveCoach/updateDiet", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.updateDiet(id: id, diets: diets, sessionId: sessionId, completion: completion,force: false)
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


    public func athleteListForCorrectiveCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void) {
        athleteListForCorrectiveCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func athleteListForCorrectiveCoach(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/athlete/forCorrectiveCoach", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteRequestsForCoach
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.athleteListForCorrectiveCoach(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func upateProgram(id: String, programs: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        upateProgram(id: id, programs: programs, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func upateProgram(id: String, programs: Array<String>, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(programs            , forKey: "programs")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/correctiveCoach/updateProgram", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.upateProgram(id: id, programs: programs, sessionId: sessionId, completion: completion,force: false)
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


    public func confirmProgram(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        confirmProgram(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func confirmProgram(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/correctiveCoach/confirmProgram", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.confirmProgram(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func confirmDiet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void) {
        confirmDiet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func confirmDiet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/correctiveCoach/confirmDiet", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.confirmDiet(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func athleteCourseList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourses?,String?) -> Void) {
        athleteCourseList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func athleteCourseList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourses?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/athleteCourses", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourses(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListAthleteCourses
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.athleteCourseList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func athleteCourseGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteCourse?,String?) -> Void) {
        athleteCourseGet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func athleteCourseGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteCourse?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/get/athleteCourse", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteCourse(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteCourse
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.athleteCourseGet(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func athleteProgramGet(courseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthletePrograms?,String?) -> Void) {
        athleteProgramGet(courseId: courseId, courseName: courseName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func athleteProgramGet(courseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthletePrograms?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(courseId            , forKey: "courseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/get/athleteProgram", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthletePrograms(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthletePrograms
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.athleteProgramGet(courseId: courseId, courseName: courseName, sessionId: sessionId, completion: completion,force: false)
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


    public func athleteDietGet(courseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteDiets?,String?) -> Void) {
        athleteDietGet(courseId: courseId, courseName: courseName, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func athleteDietGet(courseId: String, courseName: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteDiets?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(courseId            , forKey: "courseId")
                    params.updateValue(courseName            , forKey: "courseName")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/get/athleteDiet", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteDiets(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetAthleteDiets
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.athleteDietGet(courseId: courseId, courseName: courseName, sessionId: sessionId, completion: completion,force: false)
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


    public func listSportCategories(sort: String, order: String, page: String, parentId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel?,String?) -> Void) {
        listSportCategories(sort: sort, order: order, page: page, parentId: parentId, completion: completion,force: true)
    }
    
    private func listSportCategories(sort: String, order: String, page: String, parentId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(parentId            , forKey: "parentId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/list/sport/category", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportPanel
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listSportCategories(sort: sort, order: order, page: page, parentId: parentId, completion: completion,force: false)
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


    public func getCourseDetail(courseId: String, courseName: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetCourseDetail?,String?) -> Void) {
        getCourseDetail(courseId: courseId, courseName: courseName, completion: completion,force: true)
    }
    
    private func getCourseDetail(courseId: String, courseName: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetCourseDetail?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(courseId            , forKey: "courseId")
                    params.updateValue(courseName            , forKey: "courseName")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/av/get/course/detail", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetCourseDetail(serializedData: result) as Com_Vasl_Vaslapp_Products_Av_Proto_Holder_GetCourseDetail
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getCourseDetail(courseId: courseId, courseName: courseName, completion: completion,force: false)
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
