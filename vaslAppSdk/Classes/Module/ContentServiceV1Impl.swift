import Foundation

protocol ContentServiceV1 {

    func getContent(contentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func listCategory(page: String, keyWord: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryRoots(completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryByDepth(id: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered?,String?) -> Void)

    func listContentRowTypes(completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void)

    func contentCommentAdd(refId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void)

    func contentCommentUpdate(commentId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void)

    func contentCommentRemove(commentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void)

    func contentCommentsList(refId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void)

    func listContent(sessionId: String, sortType: String, status: String, page: String, order: String, beginDate: String, endDate: String, tag: String, keyWord: String, categoryId: String, categoryKey: String, contentsRandomNumber: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentByLocation(lat: String, lng: String, searchDiameter: String, page: String, isRandom: String, contentsRandomNumber: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func addDeleteContentRate(contentId: String, score: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void)

    func toggleLikeContent(contentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func toggleFavContent(contentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func favContentList(sortType: String, page: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)


}


public class ContentServiceV1Impl  : ContentServiceV1 {


    public func getContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        getContent(contentId: contentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/get", params, completion: { (result, error) in
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
        }, force)
    }


    public func listCategory(page: String, keyWord: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategory(page: page, keyWord: keyWord, completion: completion,force: true)
    }
    
    private func listCategory(page: String, keyWord: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(keyWord            , forKey: "keyWord")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/category/list", params, completion: { (result, error) in
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
        }, force)
    }


    public func listCategoryRoots(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategoryRoots( completion: completion,force: true)
    }
    
    private func listCategoryRoots(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        let params = Dictionary<String,String>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/category/list/root", params, completion: { (result, error) in
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
        }, force)
    }


    public func listCategoryByDepth(id: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void) {
        listCategoryByDepth(id: id, page: page, completion: completion,force: true)
    }
    
    private func listCategoryByDepth(id: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/category/list/depth", params, completion: { (result, error) in
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
        }, force)
    }


    public func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered?,String?) -> Void) {
        listCategoryClustered(page: page, keyWord: keyWord, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listCategoryClustered(page: String, keyWord: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryListCllustered?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/category/list/clustered", params, completion: { (result, error) in
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
        }, force)
    }


    public func listContentRowTypes(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void) {
        listContentRowTypes( completion: completion,force: true)
    }
    
    private func listContentRowTypes(completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void,force : Bool) {
        let params = Dictionary<String,String>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/contentrow/list", params, completion: { (result, error) in
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
        }, force)
    }


    public func contentCommentAdd(refId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void) {
        contentCommentAdd(refId: refId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func contentCommentAdd(refId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(refId            , forKey: "refId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.contentCommentAdd(refId: refId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func contentCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void) {
        contentCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func contentCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.contentCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func contentCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void) {
        contentCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func contentCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.contentCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: false)
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


    public func contentCommentsList(refId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void) {
        contentCommentsList(refId: refId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func contentCommentsList(refId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(refId            , forKey: "refId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.contentCommentsList(refId: refId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func listContent(sessionId: String, sortType: String, status: String, page: String, order: String, beginDate: String, endDate: String, tag: String, keyWord: String, categoryId: String, categoryKey: String, contentsRandomNumber: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContent(sessionId: sessionId, sortType: sortType, status: status, page: page, order: order, beginDate: beginDate, endDate: endDate, tag: tag, keyWord: keyWord, categoryId: categoryId, categoryKey: categoryKey, contentsRandomNumber: contentsRandomNumber, completion: completion,force: true)
    }
    
    private func listContent(sessionId: String, sortType: String, status: String, page: String, order: String, beginDate: String, endDate: String, tag: String, keyWord: String, categoryId: String, categoryKey: String, contentsRandomNumber: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(sortType            , forKey: "sortType")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(beginDate            , forKey: "beginDate")
                    params.updateValue(endDate            , forKey: "endDate")
                    params.updateValue(tag            , forKey: "tag")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(categoryId            , forKey: "categoryId")
                    params.updateValue(categoryKey            , forKey: "categoryKey")
                    params.updateValue(contentsRandomNumber            , forKey: "contentsRandomNumber")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContent(sessionId: sessionId, sortType: sortType, status: status, page: page, order: order, beginDate: beginDate, endDate: endDate, tag: tag, keyWord: keyWord, categoryId: categoryId, categoryKey: categoryKey, contentsRandomNumber: contentsRandomNumber, completion: completion,force: false)
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


    public func listContentByLocation(lat: String, lng: String, searchDiameter: String, page: String, isRandom: String, contentsRandomNumber: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContentByLocation(lat: lat, lng: lng, searchDiameter: searchDiameter, page: page, isRandom: isRandom, contentsRandomNumber: contentsRandomNumber, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listContentByLocation(lat: String, lng: String, searchDiameter: String, page: String, isRandom: String, contentsRandomNumber: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(lat            , forKey: "lat")
                    params.updateValue(lng            , forKey: "lng")
                    params.updateValue(searchDiameter            , forKey: "searchDiameter")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(isRandom            , forKey: "isRandom")
                    params.updateValue(contentsRandomNumber            , forKey: "contentsRandomNumber")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/list/location", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentByLocation(lat: lat, lng: lng, searchDiameter: searchDiameter, page: page, isRandom: isRandom, contentsRandomNumber: contentsRandomNumber, sessionId: sessionId, completion: completion,force: false)
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


    public func addDeleteContentRate(contentId: String, score: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void) {
        addDeleteContentRate(contentId: contentId, score: score, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addDeleteContentRate(contentId: String, score: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(score            , forKey: "score")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/rating", params, completion: { (result, error) in
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
        }, force)
    }


    public func toggleLikeContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        toggleLikeContent(contentId: contentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func toggleLikeContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/like", params, completion: { (result, error) in
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
        }, force)
    }


    public func toggleFavContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        toggleFavContent(contentId: contentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func toggleFavContent(contentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/fav", params, completion: { (result, error) in
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
        }, force)
    }


    public func favContentList(sortType: String, page: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        favContentList(sortType: sortType, page: page, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func favContentList(sortType: String, page: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sortType            , forKey: "sortType")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/content/fav/list", params, completion: { (result, error) in
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
        }, force)
    }


}
