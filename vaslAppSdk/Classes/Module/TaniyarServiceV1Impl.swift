import Foundation

protocol TaniyarServiceV1 {

    func getMainCategories(getSubCategories: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getTest(page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetMainCategoriesPopular?,String?) -> Void)

    func getCategoryById(id: String, getChildren: String, getParents: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getSubCategoriesById(id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getProductById(id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getProductByIds(id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getProductsByCategoryId(id: String, page: String, pagesize: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getProductsPopularByCategoryId(id: String, page: String, pagesize: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getProductsByStore(store: String, page: String, pagesize: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getProductsByStore(keyword: String, page: String, pagesize: String, catId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getHomePage(page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getStoresPage(page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getCacheClear(completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getMainCategoriesPopular(getSubCategories: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)

    func getSubCategoriesPopular(id: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void)


}


public class TaniyarServiceV1Impl  : TaniyarServiceV1 {


    public func getMainCategories(getSubCategories: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getMainCategories(getSubCategories: getSubCategories, completion: completion,force: true)
    }
    
    private func getMainCategories(getSubCategories: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(getSubCategories            , forKey: "getSubCategories")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/category/getMainCategories", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getMainCategories(getSubCategories: getSubCategories, completion: completion,force: false)
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


    public func getTest(page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetMainCategoriesPopular?,String?) -> Void) {
        getTest(page: page, completion: completion,force: true)
    }
    
    private func getTest(page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetMainCategoriesPopular?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/user/test", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetMainCategoriesPopular(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetMainCategoriesPopular
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getTest(page: page, completion: completion,force: false)
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


    public func getCategoryById(id: String, getChildren: String, getParents: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getCategoryById(id: id, getChildren: getChildren, getParents: getParents, completion: completion,force: true)
    }
    
    private func getCategoryById(id: String, getChildren: String, getParents: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(getChildren            , forKey: "getChildren")
                    params.updateValue(getParents            , forKey: "getParents")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/category/getCategoryById", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getCategoryById(id: id, getChildren: getChildren, getParents: getParents, completion: completion,force: false)
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


    public func getSubCategoriesById(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getSubCategoriesById(id: id, completion: completion,force: true)
    }
    
    private func getSubCategoriesById(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/category/getSubCategoriesById", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getSubCategoriesById(id: id, completion: completion,force: false)
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


    public func getProductById(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getProductById(id: id, completion: completion,force: true)
    }
    
    private func getProductById(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/products/getProductById", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProductById(id: id, completion: completion,force: false)
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


    public func getProductByIds(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getProductByIds(id: id, completion: completion,force: true)
    }
    
    private func getProductByIds(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/products/getProductByIds", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProductByIds(id: id, completion: completion,force: false)
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


    public func getProductsByCategoryId(id: String, page: String, pagesize: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getProductsByCategoryId(id: id, page: page, pagesize: pagesize, completion: completion,force: true)
    }
    
    private func getProductsByCategoryId(id: String, page: String, pagesize: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(pagesize            , forKey: "pagesize")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/products/getProductsByCategoryId", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProductsByCategoryId(id: id, page: page, pagesize: pagesize, completion: completion,force: false)
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


    public func getProductsPopularByCategoryId(id: String, page: String, pagesize: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getProductsPopularByCategoryId(id: id, page: page, pagesize: pagesize, completion: completion,force: true)
    }
    
    private func getProductsPopularByCategoryId(id: String, page: String, pagesize: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(pagesize            , forKey: "pagesize")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/products/getProductsPopularByCategoryId", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProductsPopularByCategoryId(id: id, page: page, pagesize: pagesize, completion: completion,force: false)
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


    public func getProductsByStore(store: String, page: String, pagesize: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getProductsByStore(store: store, page: page, pagesize: pagesize, completion: completion,force: true)
    }
    
    private func getProductsByStore(store: String, page: String, pagesize: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(store            , forKey: "store")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(pagesize            , forKey: "pagesize")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/products/getProductsByStore", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProductsByStore(store: store, page: page, pagesize: pagesize, completion: completion,force: false)
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


    public func getProductsByStore(keyword: String, page: String, pagesize: String, catId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getProductsByStore(keyword: keyword, page: page, pagesize: pagesize, catId: catId, completion: completion,force: true)
    }
    
    private func getProductsByStore(keyword: String, page: String, pagesize: String, catId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(pagesize            , forKey: "pagesize")
                    params.updateValue(catId            , forKey: "catId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/search/query", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProductsByStore(keyword: keyword, page: page, pagesize: pagesize, catId: catId, completion: completion,force: false)
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


    public func getHomePage(page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getHomePage(page: page, completion: completion,force: true)
    }
    
    private func getHomePage(page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/user/home", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getHomePage(page: page, completion: completion,force: false)
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


    public func getStoresPage(page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getStoresPage(page: page, completion: completion,force: true)
    }
    
    private func getStoresPage(page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/user/stores", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getStoresPage(page: page, completion: completion,force: false)
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


    public func getCacheClear(completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getCacheClear( completion: completion,force: true)
    }
    
    private func getCacheClear(completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/clearcache", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getCacheClear( completion: completion,force: false)
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


    public func getMainCategoriesPopular(getSubCategories: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getMainCategoriesPopular(getSubCategories: getSubCategories, completion: completion,force: true)
    }
    
    private func getMainCategoriesPopular(getSubCategories: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(getSubCategories            , forKey: "getSubCategories")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/category/getMainCategoriesPopular", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getMainCategoriesPopular(getSubCategories: getSubCategories, completion: completion,force: false)
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


    public func getSubCategoriesPopular(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void) {
        getSubCategoriesPopular(id: id, completion: completion,force: true)
    }
    
    private func getSubCategoriesPopular(id: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/taniyar/category/getSubCategoriesByIdPopular", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories(serializedData: result) as Com_Vasl_Vaslapp_Products_Taniyar_Proto_Holder_GetCategories
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getSubCategoriesPopular(id: id, completion: completion,force: false)
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
