import Foundation

protocol HambaziServiceV1 {

    func pageGet(key: String, catId: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_PageGet?,String?) -> Void)

    func subscriberList(sort: String, order: String, page: String, catId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList?,String?) -> Void)

    func videoGet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoGet?,String?) -> Void)

    func listCategory(page: String, keyWord: String, sort: String, order: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryRoots(completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryByDepth(id: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered?,String?) -> Void)

    func subscriberMyProfile(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberUserProfile(subscriberId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberUpdate(nickName: String, firstName: String, lastName: String, image: NSData, gender: String, birthDate: String, email: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func subscriberFollow(subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberFollow?,String?) -> Void)

    func subscriberUnfollow(subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow?,String?) -> Void)

    func subscriberFollowingList(sort: String, order: String, page: String, type: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow?,String?) -> Void)

    func subscriberAddressAdd(nickName: String, mobile: String, phone: String, province: String, city: String, address: String, recipientName: String, recipientPhone: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberAddressAdd?,String?) -> Void)

    func subscriberVideoList(sessionId: String, subscriberId: String, artistId: String, page: String, sort: String, order: String, hambaziStatus: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberVideoList?,String?) -> Void)

    func myVideoList(sessionId: String, artistId: String, page: String, sort: String, order: String, hambaziStatus: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_MyVideoList?,String?) -> Void)

    func actorList(sort: String, order: String, page: String, catId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList?,String?) -> Void)

    func actorVideoList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void)

    func hambaziVideos(actorId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void)

    func scenarioVideos(videoId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void)

    func videoCreate(multipartFile: NSData, title: String, description: String, actorVideoId: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func videoLikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeAdd?,String?) -> Void)

    func videoLikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeRemove?,String?) -> Void)

    func videoCommentAdd(videoId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentAdd?,String?) -> Void)

    func videoCommentUpdate(commentId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentUpdate?,String?) -> Void)

    func videoCommentRemove(commentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentRemove?,String?) -> Void)

    func videoCommentList(videoId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentList?,String?) -> Void)

    func videoSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoSearchList?,String?) -> Void)

    func videoList(page: String, sort: String, order: String, subscriberType: String, catId: String, hambaziStatus: String, actorId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoList?,String?) -> Void)

    func pageList(sessionId: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered?,String?) -> Void)

    func getBanner(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerGet?,String?) -> Void)

    func listBanner(page: String, catId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerList?,String?) -> Void)


}


public class HambaziServiceV1Impl  : HambaziServiceV1 {


    public func pageGet(key: String, catId: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_PageGet?,String?) -> Void) {
        pageGet(key: key, catId: catId, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func pageGet(key: String, catId: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_PageGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(key            , forKey: "key")
                    params.updateValue(catId            , forKey: "catId")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/page/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_PageGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_PageGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.pageGet(key: key, catId: catId, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberList(sort: String, order: String, page: String, catId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList?,String?) -> Void) {
        subscriberList(sort: sort, order: order, page: page, catId: catId, completion: completion,force: true)
    }
    
    private func subscriberList(sort: String, order: String, page: String, catId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(catId            , forKey: "catId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberList(sort: sort, order: order, page: page, catId: catId, completion: completion,force: false)
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


    public func videoGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoGet?,String?) -> Void) {
        videoGet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoGet(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func listCategory(page: String, keyWord: String, sort: String, order: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategory(page: page, keyWord: keyWord, sort: sort, order: order, completion: completion,force: true)
    }
    
    private func listCategory(page: String, keyWord: String, sort: String, order: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/category/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCategory(page: page, keyWord: keyWord, sort: sort, order: order, completion: completion,force: false)
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


    public func listCategoryRoots(completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategoryRoots( completion: completion,force: true)
    }
    
    private func listCategoryRoots(completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        let params = Dictionary<String,Any>()


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/category/list/root", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCategoryRoots( completion: completion,force: false)
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


    public func listCategoryByDepth(id: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategoryByDepth(id: id, page: page, completion: completion,force: true)
    }
    
    private func listCategoryByDepth(id: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/category/list/depth", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCategoryByDepth(id: id, page: page, completion: completion,force: false)
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


    public func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered?,String?) -> Void) {
        listCategoryClustered(page: page, keyWord: keyWord, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/category/list/clustered", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCategoryClustered(page: page, keyWord: keyWord, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberMyProfile(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberMyProfile(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberMyProfile(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/myprofile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet
                    
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


    public func subscriberUserProfile(subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberUserProfile(subscriberId: subscriberId, completion: completion,force: true)
    }
    
    private func subscriberUserProfile(subscriberId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/userprofile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUserProfile(subscriberId: subscriberId, completion: completion,force: false)
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


    public func subscriberUpdate(nickName: String, firstName: String, lastName: String, image: NSData, gender: String, birthDate: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        subscriberUpdate(nickName: nickName, firstName: firstName, lastName: lastName, image: image, gender: gender, birthDate: birthDate, email: email, completion: completion,force: true)
    }
    
    private func subscriberUpdate(nickName: String, firstName: String, lastName: String, image: NSData, gender: String, birthDate: String, email: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(firstName            , forKey: "firstName")
                    params.updateValue(lastName            , forKey: "lastName")
                    params.updateValue(image            , forKey: "image")
                    params.updateValue(gender            , forKey: "gender")
                    params.updateValue(birthDate            , forKey: "birthDate")
                    params.updateValue(email            , forKey: "email")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUpdate(nickName: nickName, firstName: firstName, lastName: lastName, image: image, gender: gender, birthDate: birthDate, email: email, completion: completion,force: false)
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


    public func subscriberFollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberFollow?,String?) -> Void) {
        subscriberFollow(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberFollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberFollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/follow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberFollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberFollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberFollow(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberUnfollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow?,String?) -> Void) {
        subscriberUnfollow(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberUnfollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/unfollow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUnfollow(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberFollowingList(sort: String, order: String, page: String, type: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow?,String?) -> Void) {
        subscriberFollowingList(sort: sort, order: order, page: page, type: type, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberFollowingList(sort: String, order: String, page: String, type: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/following/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberUnfollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberFollowingList(sort: sort, order: order, page: page, type: type, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberAddressAdd(nickName: String, mobile: String, phone: String, province: String, city: String, address: String, recipientName: String, recipientPhone: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberAddressAdd?,String?) -> Void) {
        subscriberAddressAdd(nickName: nickName, mobile: mobile, phone: phone, province: province, city: city, address: address, recipientName: recipientName, recipientPhone: recipientPhone, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberAddressAdd(nickName: String, mobile: String, phone: String, province: String, city: String, address: String, recipientName: String, recipientPhone: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberAddressAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(phone            , forKey: "phone")
                    params.updateValue(province            , forKey: "province")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(address            , forKey: "address")
                    params.updateValue(recipientName            , forKey: "recipientName")
                    params.updateValue(recipientPhone            , forKey: "recipientPhone")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/address/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberAddressAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberAddressAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberAddressAdd(nickName: nickName, mobile: mobile, phone: phone, province: province, city: city, address: address, recipientName: recipientName, recipientPhone: recipientPhone, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberVideoList(sessionId: String, subscriberId: String, artistId: String, page: String, sort: String, order: String, hambaziStatus: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberVideoList?,String?) -> Void) {
        subscriberVideoList(sessionId: sessionId, subscriberId: subscriberId, artistId: artistId, page: page, sort: sort, order: order, hambaziStatus: hambaziStatus, completion: completion,force: true)
    }
    
    private func subscriberVideoList(sessionId: String, subscriberId: String, artistId: String, page: String, sort: String, order: String, hambaziStatus: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(hambaziStatus            , forKey: "hambaziStatus")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/subscriber/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberVideoList(sessionId: sessionId, subscriberId: subscriberId, artistId: artistId, page: page, sort: sort, order: order, hambaziStatus: hambaziStatus, completion: completion,force: false)
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


    public func myVideoList(sessionId: String, artistId: String, page: String, sort: String, order: String, hambaziStatus: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_MyVideoList?,String?) -> Void) {
        myVideoList(sessionId: sessionId, artistId: artistId, page: page, sort: sort, order: order, hambaziStatus: hambaziStatus, completion: completion,force: true)
    }
    
    private func myVideoList(sessionId: String, artistId: String, page: String, sort: String, order: String, hambaziStatus: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_MyVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(hambaziStatus            , forKey: "hambaziStatus")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/my/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_MyVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_MyVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myVideoList(sessionId: sessionId, artistId: artistId, page: page, sort: sort, order: order, hambaziStatus: hambaziStatus, completion: completion,force: false)
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


    public func actorList(sort: String, order: String, page: String, catId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList?,String?) -> Void) {
        actorList(sort: sort, order: order, page: page, catId: catId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func actorList(sort: String, order: String, page: String, catId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(catId            , forKey: "catId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/actor/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_SubscriberList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.actorList(sort: sort, order: order, page: page, catId: catId, sessionId: sessionId, completion: completion,force: false)
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


    public func actorVideoList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void) {
        actorVideoList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func actorVideoList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/actor/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.actorVideoList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func hambaziVideos(actorId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void) {
        hambaziVideos(actorId: actorId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func hambaziVideos(actorId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(actorId            , forKey: "actorId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/actor/hambazivideo", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.hambaziVideos(actorId: actorId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func scenarioVideos(videoId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void) {
        scenarioVideos(videoId: videoId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func scenarioVideos(videoId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(videoId            , forKey: "videoId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/scenario/hambazivideo", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_ActorVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.scenarioVideos(videoId: videoId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func videoCreate(multipartFile: NSData, title: String, description: String, actorVideoId: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        videoCreate(multipartFile: multipartFile, title: title, description: description, actorVideoId: actorVideoId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCreate(multipartFile: NSData, title: String, description: String, actorVideoId: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(multipartFile            , forKey: "multipartFile")
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(actorVideoId            , forKey: "actorVideoId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postMultiPart(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/create", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoCreate(multipartFile: multipartFile, title: title, description: description, actorVideoId: actorVideoId, sessionId: sessionId, completion: completion,force: false)
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


    public func videoLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeAdd?,String?) -> Void) {
        videoLikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/like/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoLikeAdd(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func videoLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeRemove?,String?) -> Void) {
        videoLikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/like/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoLikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoLikeRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func videoCommentAdd(videoId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentAdd?,String?) -> Void) {
        videoCommentAdd(videoId: videoId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentAdd(videoId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(videoId            , forKey: "videoId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoCommentAdd(videoId: videoId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func videoCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentUpdate?,String?) -> Void) {
        videoCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func videoCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentRemove?,String?) -> Void) {
        videoCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: false)
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


    public func videoCommentList(videoId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentList?,String?) -> Void) {
        videoCommentList(videoId: videoId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentList(videoId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(videoId            , forKey: "videoId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoCommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoCommentList(videoId: videoId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func videoSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoSearchList?,String?) -> Void) {
        videoSearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/search/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoSearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func videoList(page: String, sort: String, order: String, subscriberType: String, catId: String, hambaziStatus: String, actorId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoList?,String?) -> Void) {
        videoList(page: page, sort: sort, order: order, subscriberType: subscriberType, catId: catId, hambaziStatus: hambaziStatus, actorId: actorId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoList(page: String, sort: String, order: String, subscriberType: String, catId: String, hambaziStatus: String, actorId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(subscriberType            , forKey: "subscriberType")
                    params.updateValue(catId            , forKey: "catId")
                    params.updateValue(hambaziStatus            , forKey: "hambaziStatus")
                    params.updateValue(actorId            , forKey: "actorId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_VideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoList(page: page, sort: sort, order: order, subscriberType: subscriberType, catId: catId, hambaziStatus: hambaziStatus, actorId: actorId, sessionId: sessionId, completion: completion,force: false)
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


    public func pageList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered?,String?) -> Void) {
        pageList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func pageList(sessionId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/page/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_CategoryListCllustered
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.pageList(sessionId: sessionId, sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func getBanner(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerGet?,String?) -> Void) {
        getBanner(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getBanner(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/banner/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getBanner(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func listBanner(page: String, catId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerList?,String?) -> Void) {
        listBanner(page: page, catId: catId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listBanner(page: String, catId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(catId            , forKey: "catId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/hambazi/banner/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerList(serializedData: result) as Com_Vasl_Vaslapp_Products_Hambazi_Proto_Holder_BannerList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listBanner(page: page, catId: catId, sessionId: sessionId, completion: completion,force: false)
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
