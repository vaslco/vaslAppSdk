import Foundation

protocol EventManagerService {

    func listEventManager(sort: String, order: String, page: String, eventStatus: String, subscriberStatus: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListEventManagerApi?,String?) -> Void)

    func addEventManagerComment(eventId: String, comment: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func listEventManagerCommentApi(eventId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi?,String?) -> Void)

    func addEventManagerLike(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func registerEventSubscriber(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func deleteEventSubscriber(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func listEventManagerSubscribers(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SubscriberEvents?,String?) -> Void)

    func getEventManager(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GetEventManagerApi?,String?) -> Void)

    func listEventGift(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GiftListApi?,String?) -> Void)

    func listEventAchievement(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi?,String?) -> Void)

    func listSubscriberEventAchievement(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi?,String?) -> Void)

    func updateEventSubscriber(id: String, achievementId: String, eventId: String, step: String, startTime: String, endTime: String, startLocationLat: String, startLocationLng: String, endLocationLat: String, endLocationLng: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func startEventSubscriber(id: String, eventId: String, startTime: String, startLocationLat: String, startLocationLng: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func endEventSubscriber(id: String, eventId: String, step: String, calories: String, endTime: String, durationTime: String, endLocationLat: String, endLocationLng: String, distanceMove: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void)

    func getSumAllEvent(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SumAllEvents?,String?) -> Void)

    func listEventWinners(eventId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_WinnerList?,String?) -> Void)


}


public class EventManagerServiceImpl  : EventManagerService {


    public func listEventManager(sort: String, order: String, page: String, eventStatus: String, subscriberStatus: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListEventManagerApi?,String?) -> Void) {
        listEventManager(sort: sort, order: order, page: page, eventStatus: eventStatus, subscriberStatus: subscriberStatus, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventManager(sort: String, order: String, page: String, eventStatus: String, subscriberStatus: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListEventManagerApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(eventStatus            , forKey: "eventStatus")
                    params.updateValue(subscriberStatus            , forKey: "subscriberStatus")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/list/eventmanager", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListEventManagerApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListEventManagerApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventManager(sort: sort, order: order, page: page, eventStatus: eventStatus, subscriberStatus: subscriberStatus, sessionId: sessionId, completion: completion,force: false)
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


    public func addEventManagerComment(eventId: String, comment: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        addEventManagerComment(eventId: eventId, comment: comment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addEventManagerComment(eventId: String, comment: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(comment            , forKey: "comment")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/add/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addEventManagerComment(eventId: eventId, comment: comment, sessionId: sessionId, completion: completion,force: false)
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


    public func listEventManagerCommentApi(eventId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi?,String?) -> Void) {
        listEventManagerCommentApi(eventId: eventId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventManagerCommentApi(eventId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/list/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_ListCommentApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventManagerCommentApi(eventId: eventId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func addEventManagerLike(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        addEventManagerLike(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addEventManagerLike(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/add/like", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addEventManagerLike(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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


    public func registerEventSubscriber(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        registerEventSubscriber(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func registerEventSubscriber(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/register/eventsubscriber", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.registerEventSubscriber(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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


    public func deleteEventSubscriber(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        deleteEventSubscriber(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func deleteEventSubscriber(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/delete/eventsubscriber", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.deleteEventSubscriber(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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


    public func listEventManagerSubscribers(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SubscriberEvents?,String?) -> Void) {
        listEventManagerSubscribers(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventManagerSubscribers(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SubscriberEvents?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/list/eventsubscriber", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SubscriberEvents(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SubscriberEvents
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventManagerSubscribers(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func getEventManager(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GetEventManagerApi?,String?) -> Void) {
        getEventManager(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getEventManager(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GetEventManagerApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/get/eventmanager", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GetEventManagerApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GetEventManagerApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getEventManager(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func listEventGift(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GiftListApi?,String?) -> Void) {
        listEventGift(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventGift(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GiftListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/gift/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GiftListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_GiftListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventGift(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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


    public func listEventAchievement(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi?,String?) -> Void) {
        listEventAchievement(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventAchievement(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/achievement/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventAchievement(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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


    public func listSubscriberEventAchievement(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi?,String?) -> Void) {
        listSubscriberEventAchievement(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listSubscriberEventAchievement(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/subscriber/achievement/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_AchievemenListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listSubscriberEventAchievement(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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


    public func updateEventSubscriber(id: String, achievementId: String, eventId: String, step: String, startTime: String, endTime: String, startLocationLat: String, startLocationLng: String, endLocationLat: String, endLocationLng: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        updateEventSubscriber(id: id, achievementId: achievementId, eventId: eventId, step: step, startTime: startTime, endTime: endTime, startLocationLat: startLocationLat, startLocationLng: startLocationLng, endLocationLat: endLocationLat, endLocationLng: endLocationLng, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func updateEventSubscriber(id: String, achievementId: String, eventId: String, step: String, startTime: String, endTime: String, startLocationLat: String, startLocationLng: String, endLocationLat: String, endLocationLng: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(achievementId            , forKey: "achievementId")
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(step            , forKey: "step")
                    params.updateValue(startTime            , forKey: "startTime")
                    params.updateValue(endTime            , forKey: "endTime")
                    params.updateValue(startLocationLat            , forKey: "startLocationLat")
                    params.updateValue(startLocationLng            , forKey: "startLocationLng")
                    params.updateValue(endLocationLat            , forKey: "endLocationLat")
                    params.updateValue(endLocationLng            , forKey: "endLocationLng")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/eventSubscriber/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.updateEventSubscriber(id: id, achievementId: achievementId, eventId: eventId, step: step, startTime: startTime, endTime: endTime, startLocationLat: startLocationLat, startLocationLng: startLocationLng, endLocationLat: endLocationLat, endLocationLng: endLocationLng, sessionId: sessionId, completion: completion,force: false)
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


    public func startEventSubscriber(id: String, eventId: String, startTime: String, startLocationLat: String, startLocationLng: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        startEventSubscriber(id: id, eventId: eventId, startTime: startTime, startLocationLat: startLocationLat, startLocationLng: startLocationLng, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func startEventSubscriber(id: String, eventId: String, startTime: String, startLocationLat: String, startLocationLng: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(startTime            , forKey: "startTime")
                    params.updateValue(startLocationLat            , forKey: "startLocationLat")
                    params.updateValue(startLocationLng            , forKey: "startLocationLng")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/eventSubscriber/start", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.startEventSubscriber(id: id, eventId: eventId, startTime: startTime, startLocationLat: startLocationLat, startLocationLng: startLocationLng, sessionId: sessionId, completion: completion,force: false)
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


    public func endEventSubscriber(id: String, eventId: String, step: String, calories: String, endTime: String, durationTime: String, endLocationLat: String, endLocationLng: String, distanceMove: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void) {
        endEventSubscriber(id: id, eventId: eventId, step: step, calories: calories, endTime: endTime, durationTime: durationTime, endLocationLat: endLocationLat, endLocationLng: endLocationLng, distanceMove: distanceMove, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func endEventSubscriber(id: String, eventId: String, step: String, calories: String, endTime: String, durationTime: String, endLocationLat: String, endLocationLng: String, distanceMove: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(step            , forKey: "step")
                    params.updateValue(calories            , forKey: "calories")
                    params.updateValue(endTime            , forKey: "endTime")
                    params.updateValue(durationTime            , forKey: "durationTime")
                    params.updateValue(endLocationLat            , forKey: "endLocationLat")
                    params.updateValue(endLocationLng            , forKey: "endLocationLng")
                    params.updateValue(distanceMove            , forKey: "distanceMove")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/eventSubscriber/end", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_General
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.endEventSubscriber(id: id, eventId: eventId, step: step, calories: calories, endTime: endTime, durationTime: durationTime, endLocationLat: endLocationLat, endLocationLng: endLocationLng, distanceMove: distanceMove, sessionId: sessionId, completion: completion,force: false)
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


    public func getSumAllEvent(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SumAllEvents?,String?) -> Void) {
        getSumAllEvent(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getSumAllEvent(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SumAllEvents?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/sumAllEvent/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SumAllEvents(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_SumAllEvents
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getSumAllEvent(sessionId: sessionId, completion: completion,force: false)
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


    public func listEventWinners(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_WinnerList?,String?) -> Void) {
        listEventWinners(eventId: eventId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listEventWinners(eventId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_WinnerList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(eventId            , forKey: "eventId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/eventmanager/winner/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_WinnerList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Event_Manager_Global_Proto_Holder_WinnerList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listEventWinners(eventId: eventId, sessionId: sessionId, completion: completion,force: false)
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
