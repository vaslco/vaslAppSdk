import Foundation

protocol ShopServiceV1 {

    func addComment(productId: String, comment: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func listComment(productId: String, sort: String, order: String, page: String, limit: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi?,String?) -> Void)

    func addQuestion(productId: String, question: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func listQuestion(productId: String, sort: String, order: String, page: String, limit: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi?,String?) -> Void)

    func addProductCart(productId: String, sellerId: String, colorId: String, count: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart?,String?) -> Void)

    func deleteProductCart(orderId: String, count: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func listProductCart(completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi?,String?) -> Void)


}


public class ShopServiceV1Impl  : ShopServiceV1 {


    public func addComment(productId: String, comment: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        addComment(productId: productId, comment: comment, completion: completion,force: true)
    }
    
    private func addComment(productId: String, comment: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(comment            , forKey: "comment")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addComment(productId: productId, comment: comment, completion: completion,force: false)
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


    public func listComment(productId: String, sort: String, order: String, page: String, limit: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi?,String?) -> Void) {
        listComment(productId: productId, sort: sort, order: order, page: page, limit: limit, completion: completion,force: true)
    }
    
    private func listComment(productId: String, sort: String, order: String, page: String, limit: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(limit            , forKey: "limit")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listComment(productId: productId, sort: sort, order: order, page: page, limit: limit, completion: completion,force: false)
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


    public func addQuestion(productId: String, question: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        addQuestion(productId: productId, question: question, completion: completion,force: true)
    }
    
    private func addQuestion(productId: String, question: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(question            , forKey: "question")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/question", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addQuestion(productId: productId, question: question, completion: completion,force: false)
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


    public func listQuestion(productId: String, sort: String, order: String, page: String, limit: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi?,String?) -> Void) {
        listQuestion(productId: productId, sort: sort, order: order, page: page, limit: limit, completion: completion,force: true)
    }
    
    private func listQuestion(productId: String, sort: String, order: String, page: String, limit: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(limit            , forKey: "limit")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/question", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listQuestion(productId: productId, sort: sort, order: order, page: page, limit: limit, completion: completion,force: false)
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


    public func addProductCart(productId: String, sellerId: String, colorId: String, count: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart?,String?) -> Void) {
        addProductCart(productId: productId, sellerId: sellerId, colorId: colorId, count: count, completion: completion,force: true)
    }
    
    private func addProductCart(productId: String, sellerId: String, colorId: String, count: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sellerId            , forKey: "sellerId")
                    params.updateValue(colorId            , forKey: "colorId")
                    params.updateValue(count            , forKey: "count")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/product/cart", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addProductCart(productId: productId, sellerId: sellerId, colorId: colorId, count: count, completion: completion,force: false)
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


    public func deleteProductCart(orderId: String, count: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        deleteProductCart(orderId: orderId, count: count, completion: completion,force: true)
    }
    
    private func deleteProductCart(orderId: String, count: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(count            , forKey: "count")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/delete/product/cart", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.deleteProductCart(orderId: orderId, count: count, completion: completion,force: false)
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


    public func listProductCart(completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi?,String?) -> Void) {
        listProductCart( completion: completion,force: true)
    }
    
    private func listProductCart(completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi?,String?) -> Void,force : Bool) {
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/product/cart", Dictionary<String,String>(), completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listProductCart( completion: completion,force: false)
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
