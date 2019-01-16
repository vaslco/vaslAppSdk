import Foundation

protocol ContentServiceV2 {

    func getContent(contentId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func searchByType(tag: String, keyWord: String, contentSearchDataType: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func addDeleteContentRate(contentId: String, score: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void)

    func toggleLikeContent(contentId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func toggleFavContent(contentId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void)

    func favContentList(sortType: String, page: String, order: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listCategory(page: String, keyWord: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_CategoryList?,String?) -> Void)

    func listContent(sortType: String, status: String, page: String, order: String, tag: String, keyWord: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentByStatus(page: String, status: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentByCategory(page: String, categoryId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentByTag(page: String, tag: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void)

    func listContentRowTypes(completion : @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentRowTypeList?,String?) -> Void)

    func trackCommentAdd(refId: String, content: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void)

    func trackCommentUpdate(commentId: String, content: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void)

    func trackCommentRemove(commentId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void)

    func trackCommentsList(refId: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void)


}


public class ContentServiceV2Impl  : ContentServiceV2 {


    public func getContent(contentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        getContent(contentId: contentId, completion: completion,force: true)
    }
    
    private func getContent(contentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getContent(contentId: contentId, completion: completion,force: false)
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


    public func searchByType(tag: String, keyWord: String, contentSearchDataType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        searchByType(tag: tag, keyWord: keyWord, contentSearchDataType: contentSearchDataType, completion: completion,force: true)
    }
    
    private func searchByType(tag: String, keyWord: String, contentSearchDataType: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(tag            , forKey: "tag")
                    params.updateValue(keyWord            , forKey: "keyWord")
                    params.updateValue(contentSearchDataType            , forKey: "contentSearchDataType")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.searchByType(tag: tag, keyWord: keyWord, contentSearchDataType: contentSearchDataType, completion: completion,force: false)
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


    public func addDeleteContentRate(contentId: String, score: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void) {
        addDeleteContentRate(contentId: contentId, score: score, completion: completion,force: true)
    }
    
    private func addDeleteContentRate(contentId: String, score: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
                    params.updateValue(score            , forKey: "score")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/rating", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_GetContentInfo
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addDeleteContentRate(contentId: contentId, score: score, completion: completion,force: false)
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


    public func toggleLikeContent(contentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        toggleLikeContent(contentId: contentId, completion: completion,force: true)
    }
    
    private func toggleLikeContent(contentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/like", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.toggleLikeContent(contentId: contentId, completion: completion,force: false)
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


    public func toggleFavContent(contentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void) {
        toggleFavContent(contentId: contentId, completion: completion,force: true)
    }
    
    private func toggleFavContent(contentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(contentId            , forKey: "contentId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/fav", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.toggleFavContent(contentId: contentId, completion: completion,force: false)
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


    public func favContentList(sortType: String, page: String, order: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        favContentList(sortType: sortType, page: page, order: order, completion: completion,force: true)
    }
    
    private func favContentList(sortType: String, page: String, order: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sortType            , forKey: "sortType")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/fav/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.favContentList(sortType: sortType, page: page, order: order, completion: completion,force: false)
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
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/category/list", params, completion: { (result, error) in
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


    public func listContent(sortType: String, status: String, page: String, order: String, tag: String, keyWord: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContent(sortType: sortType, status: status, page: page, order: order, tag: tag, keyWord: keyWord, completion: completion,force: true)
    }
    
    private func listContent(sortType: String, status: String, page: String, order: String, tag: String, keyWord: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sortType            , forKey: "sortType")
                    params.updateValue(status            , forKey: "status")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(tag            , forKey: "tag")
                    params.updateValue(keyWord            , forKey: "keyWord")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContent(sortType: sortType, status: status, page: page, order: order, tag: tag, keyWord: keyWord, completion: completion,force: false)
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


    public func listContentByStatus(page: String, status: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContentByStatus(page: page, status: status, completion: completion,force: true)
    }
    
    private func listContentByStatus(page: String, status: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(status            , forKey: "status")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/listbystatus", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentByStatus(page: page, status: status, completion: completion,force: false)
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


    public func listContentByCategory(page: String, categoryId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContentByCategory(page: page, categoryId: categoryId, completion: completion,force: true)
    }
    
    private func listContentByCategory(page: String, categoryId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(categoryId            , forKey: "categoryId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/listbycategory", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentByCategory(page: page, categoryId: categoryId, completion: completion,force: false)
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


    public func listContentByTag(page: String, tag: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void) {
        listContentByTag(page: page, tag: tag, completion: completion,force: true)
    }
    
    private func listContentByTag(page: String, tag: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(tag            , forKey: "tag")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/listbytag", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Content_Global_Proto_Holder_ContentsList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listContentByTag(page: page, tag: tag, completion: completion,force: false)
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
        
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/contentrow/list", Dictionary<String,String>(), completion: { (result, error) in
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


    public func trackCommentAdd(refId: String, content: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void) {
        trackCommentAdd(refId: refId, content: content, completion: completion,force: true)
    }
    
    private func trackCommentAdd(refId: String, content: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(refId            , forKey: "refId")
                    params.updateValue(content            , forKey: "content")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentAdd(refId: refId, content: content, completion: completion,force: false)
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


    public func trackCommentUpdate(commentId: String, content: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void) {
        trackCommentUpdate(commentId: commentId, content: content, completion: completion,force: true)
    }
    
    private func trackCommentUpdate(commentId: String, content: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentUpdate(commentId: commentId, content: content, completion: completion,force: false)
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


    public func trackCommentRemove(commentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void) {
        trackCommentRemove(commentId: commentId, completion: completion,force: true)
    }
    
    private func trackCommentRemove(commentId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentRemove(commentId: commentId, completion: completion,force: false)
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


    public func trackCommentsList(refId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void) {
        trackCommentsList(refId: refId, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func trackCommentsList(refId: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(refId            , forKey: "refId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v2/content/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList(serializedData: result) as Com_Vasl_Vaslapp_Modules_Comment_Proto_Holder_CommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentsList(refId: refId, sort: sort, order: order, page: page, completion: completion,force: false)
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
