import Foundation

protocol KalingaServiceV1 {

    func addJsonContent(headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentAdd?,String?) -> Void)

    func addContent(headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func editJsonContent(contentId: String, headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentEdit?,String?) -> Void)

    func editContent(contentId: String, headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion : @escaping (webServiceResult?,String?) -> Void)

    func listProperty(type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_PropertyList?,String?) -> Void)

    func listCategory(page: String, keyWord: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryRoots(completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryByDepth(id: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered?,String?) -> Void)

    func getContent(contentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func listContentRowTypes(completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void)

    func ContentCommentAdd(refId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void)

    func ContentCommentUpdate(commentId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void)

    func ContentCommentRemove(commentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void)

    func ContentCommentsList(refId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void)

    func listContent(sessionId: String, sortType: String, status: String, page: String, order: String, beginDate: String, endDate: String, tag: String, keyWord: String, categoryKey: String, contentsRandomNumber: String, country: String, state: String, city: String, type: String, propertyValue: Array<String>,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentByCity(country: String, state: String, city: String, page: String, type: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentByLocation(lat: String, lng: String, searchDiameter: String, page: String, isRandom: String, contentsRandomNumber: String, sessionId: String, type: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func addDeleteContentRate(contentId: String, score: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void)

    func toggleLikeContent(contentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func toggleFavContent(contentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func favContentList(sortType: String, page: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)


}


public class KalingaServiceV1Impl  : KalingaServiceV1 {


    public func addJsonContent(headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentAdd?,String?) -> Void) {
        addJsonContent(headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addJsonContent(headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(headline            , forKey: "headline")
                    params.updateValue(banner            , forKey: "banner")
                    params.updateValue(summery            , forKey: "summery")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(catIds            , forKey: "catIds")
                    params.updateValue(lat            , forKey: "lat")
                    params.updateValue(lng            , forKey: "lng")
                    params.updateValue(propertyValue            , forKey: "propertyValue")
                    params.updateValue(language            , forKey: "language")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/addJson", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addJsonContent(headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func addContent(headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        addContent(headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addContent(headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(headline            , forKey: "headline")
                    params.updateValue(banner            , forKey: "banner")
                    params.updateValue(summery            , forKey: "summery")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(catIds            , forKey: "catIds")
                    params.updateValue(lat            , forKey: "lat")
                    params.updateValue(lng            , forKey: "lng")
                    params.updateValue(propertyValue            , forKey: "propertyValue")
              //      params.updateValue(language            , forKey: "language")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addContent(headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func editJsonContent(contentId: String, headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentEdit?,String?) -> Void) {
        editJsonContent(contentId: contentId, headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func editJsonContent(contentId: String, headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentEdit?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(headline            , forKey: "headline")
                    params.updateValue(banner            , forKey: "banner")
                    params.updateValue(summery            , forKey: "summery")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(catIds            , forKey: "catIds")
                    params.updateValue(lat            , forKey: "lat")
                    params.updateValue(lng            , forKey: "lng")
                    params.updateValue(propertyValue            , forKey: "propertyValue")
                    params.updateValue(language            , forKey: "language")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/editJson", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentEdit(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentEdit
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.editJsonContent(contentId: contentId, headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func editContent(contentId: String, headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void) {
        editContent(contentId: contentId, headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func editContent(contentId: String, headline: String, banner: String, summery: String, content: Array<String>, status: String, tags: Array<String>, catIds: Array<String>, lat: String, lng: String, propertyValue: Array<String>, language: String, type: String, sessionId: String,completion: @escaping (webServiceResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(headline            , forKey: "headline")
                    params.updateValue(banner            , forKey: "banner")
                    params.updateValue(summery            , forKey: "summery")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(tags            , forKey: "tags")
                    params.updateValue(catIds            , forKey: "catIds")
                    params.updateValue(lat            , forKey: "lat")
                    params.updateValue(lng            , forKey: "lng")
                    params.updateValue(propertyValue            , forKey: "propertyValue")
                //    params.updateValue(language            , forKey: "language")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.postJson(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/edit", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let dictionary = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as! NSDictionary
                    let serviceResponse = webServiceResult.init() 
                    serviceResponse.parseJsonResult(dictionary)
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.editContent(contentId: contentId, headline: headline, banner: banner, summery: summery, content: content, status: status, tags: tags, catIds: catIds, lat: lat, lng: lng, propertyValue: propertyValue, language: language, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func listProperty(type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_PropertyList?,String?) -> Void) {
        listProperty(type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listProperty(type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_PropertyList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/property/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_PropertyList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_PropertyList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listProperty(type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func listCategory(page: String, keyWord: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategory(page: page, keyWord: keyWord, completion: completion,force: true)
    }
    
    private func listCategory(page: String, keyWord: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(keyWord            , forKey: "keyWord")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/category/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCategory(page: page, keyWord: keyWord, completion: completion,force: false)
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


    public func listCategoryRoots(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategoryRoots( completion: completion,force: true)
    }
    
    private func listCategoryRoots(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/category/list/root", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList
                    
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


    public func listCategoryByDepth(id: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategoryByDepth(id: id, page: page, completion: completion,force: true)
    }
    
    private func listCategoryByDepth(id: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(page            , forKey: "page")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/category/list/depth", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList
                    
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


    public func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered?,String?) -> Void) {
        listCategoryClustered(page: page, keyWord: keyWord, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/category/list/clustered", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered
                    
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


    public func getContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        getContent(contentId: contentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getContent(contentId: contentId, sessionId: sessionId, completion: completion,force: false)
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


    public func listContentRowTypes(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void) {
        listContentRowTypes( completion: completion,force: true)
    }
    
    private func listContentRowTypes(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/Contentrow/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentRowTypes( completion: completion,force: false)
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


    public func ContentCommentAdd(refId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void) {
        ContentCommentAdd(refId: refId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func ContentCommentAdd(refId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(refId            , forKey: "refId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.ContentCommentAdd(refId: refId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func ContentCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void) {
        ContentCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func ContentCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.ContentCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func ContentCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void) {
        ContentCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func ContentCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.ContentCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: false)
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


    public func ContentCommentsList(refId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void) {
        ContentCommentsList(refId: refId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func ContentCommentsList(refId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(refId            , forKey: "refId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.ContentCommentsList(refId: refId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func listContent(sessionId: String, sortType: String, status: String, page: String, order: String, beginDate: String, endDate: String, tag: String, keyWord: String, categoryKey: String, contentsRandomNumber: String, country: String, state: String, city: String, type: String, propertyValue: Array<String>,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContent(sessionId: sessionId, sortType: sortType, status: status, page: page, order: order, beginDate: beginDate, endDate: endDate, tag: tag, keyWord: keyWord, categoryKey: categoryKey, contentsRandomNumber: contentsRandomNumber, country: country, state: state, city: city, type: type, propertyValue: propertyValue, completion: completion,force: true)
    }
    
    private func listContent(sessionId: String, sortType: String, status: String, page: String, order: String, beginDate: String, endDate: String, tag: String, keyWord: String, categoryKey: String, contentsRandomNumber: String, country: String, state: String, city: String, type: String, propertyValue: Array<String>,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(sortType            , forKey: "sortType")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(beginDate            , forKey: "beginDate")
                    params.updateValue(endDate            , forKey: "endDate")
                    params.updateValue(tag            , forKey: "tag")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(categoryKey            , forKey: "categoryKey")
                    params.updateValue(contentsRandomNumber            , forKey: "contentsRandomNumber")
                    params.updateValue(country            , forKey: "country")
                    params.updateValue(state            , forKey: "state")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(propertyValue            , forKey: "propertyValue")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContent(sessionId: sessionId, sortType: sortType, status: status, page: page, order: order, beginDate: beginDate, endDate: endDate, tag: tag, keyWord: keyWord, categoryKey: categoryKey, contentsRandomNumber: contentsRandomNumber, country: country, state: state, city: city, type: type, propertyValue: propertyValue, completion: completion,force: false)
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


    public func listContentByCity(country: String, state: String, city: String, page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContentByCity(country: country, state: state, city: city, page: page, type: type, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listContentByCity(country: String, state: String, city: String, page: String, type: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(country            , forKey: "country")
                    params.updateValue(state            , forKey: "state")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/listByCity", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentByCity(country: country, state: state, city: city, page: page, type: type, sessionId: sessionId, completion: completion,force: false)
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


    public func listContentByLocation(lat: String, lng: String, searchDiameter: String, page: String, isRandom: String, contentsRandomNumber: String, sessionId: String, type: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContentByLocation(lat: lat, lng: lng, searchDiameter: searchDiameter, page: page, isRandom: isRandom, contentsRandomNumber: contentsRandomNumber, sessionId: sessionId, type: type, completion: completion,force: true)
    }
    
    private func listContentByLocation(lat: String, lng: String, searchDiameter: String, page: String, isRandom: String, contentsRandomNumber: String, sessionId: String, type: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(lat            , forKey: "lat")
                    params.updateValue(lng            , forKey: "lng")
                    params.updateValue(searchDiameter            , forKey: "searchDiameter")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(isRandom            , forKey: "isRandom")
                    params.updateValue(contentsRandomNumber            , forKey: "contentsRandomNumber")
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(type            , forKey: "type")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/list/location", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentByLocation(lat: lat, lng: lng, searchDiameter: searchDiameter, page: page, isRandom: isRandom, contentsRandomNumber: contentsRandomNumber, sessionId: sessionId, type: type, completion: completion,force: false)
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


    public func addDeleteContentRate(contentId: String, score: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void) {
        addDeleteContentRate(contentId: contentId, score: score, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addDeleteContentRate(contentId: String, score: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(score            , forKey: "score")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/rating", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addDeleteContentRate(contentId: contentId, score: score, sessionId: sessionId, completion: completion,force: false)
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


    public func toggleLikeContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        toggleLikeContent(contentId: contentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func toggleLikeContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/like", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.toggleLikeContent(contentId: contentId, sessionId: sessionId, completion: completion,force: false)
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


    public func toggleFavContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        toggleFavContent(contentId: contentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func toggleFavContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/fav", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.toggleFavContent(contentId: contentId, sessionId: sessionId, completion: completion,force: false)
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


    public func favContentList(sortType: String, page: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        favContentList(sortType: sortType, page: page, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func favContentList(sortType: String, page: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sortType            , forKey: "sortType")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/Kalinga/content/fav/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.favContentList(sortType: sortType, page: page, order: order, sessionId: sessionId, completion: completion,force: false)
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
