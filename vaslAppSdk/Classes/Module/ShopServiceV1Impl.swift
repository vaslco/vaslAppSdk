import Foundation

protocol ShopServiceV1 {

    func addAddress(nickName: String, mobile: String, phone: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func addComment(productId: String, comment: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func addScore(productId: String, score: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities?,String?) -> Void)

    func listComment(productId: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi?,String?) -> Void)

    func addQuestion(productId: String, question: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func listQuestion(productId: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi?,String?) -> Void)

    func addProductCart(productId: String, sellerId: String, colorId: String, count: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart?,String?) -> Void)

    func deleteProductCart(orderId: String, count: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func listProductCart(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi?,String?) -> Void)

    func listSendTimes(totalPrice: String, addressId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListPossibleTimes?,String?) -> Void)

    func updateAddress(priority: String, addressId: String, nickName: String, mobile: String, phone: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func deleteAddress(addressId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func listAddress(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void)

    func finalizeOrder(transportId: String, bankCode: String, discountCoupon: String, addressId: String, price: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_PaymentResult?,String?) -> Void)

    func listOrder(insertTime: String, orderStatus: String, payStatus: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListOrders?,String?) -> Void)

    func listUnits(type: String, list: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListUnits?,String?) -> Void)

    func useCoupon(price: String, code: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_GetDiscountPrice?,String?) -> Void)

    func listCities(state: String, cities: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities?,String?) -> Void)

    func getProduct(productId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ProductGetApi?,String?) -> Void)


}


public class ShopServiceV1Impl  : ShopServiceV1 {


    public func addAddress(nickName: String, mobile: String, phone: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        addAddress(nickName: nickName, mobile: mobile, phone: phone, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addAddress(nickName: String, mobile: String, phone: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(phone            , forKey: "phone")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(sector            , forKey: "sector")
                    params.updateValue(address            , forKey: "address")
                    params.updateValue(postalCode            , forKey: "postalCode")
                    params.updateValue(recipientName            , forKey: "recipientName")
                    params.updateValue(recipientPhone            , forKey: "recipientPhone")
                    params.updateValue(locationLatitude            , forKey: "locationLatitude")
                    params.updateValue(locationLongitude            , forKey: "locationLongitude")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/address", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addAddress(nickName: nickName, mobile: mobile, phone: phone, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: false)
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


    public func addComment(productId: String, comment: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        addComment(productId: productId, comment: comment, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addComment(productId: String, comment: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(comment            , forKey: "comment")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addComment(productId: productId, comment: comment, sessionId: sessionId, completion: completion,force: false)
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


    public func addScore(productId: String, score: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities?,String?) -> Void) {
        addScore(productId: productId, score: score, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addScore(productId: String, score: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(score            , forKey: "score")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/score", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addScore(productId: productId, score: score, sessionId: sessionId, completion: completion,force: false)
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


    public func listComment(productId: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi?,String?) -> Void) {
        listComment(productId: productId, sort: sort, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listComment(productId: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(limit            , forKey: "limit")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/comment", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_CommentListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listComment(productId: productId, sort: sort, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: false)
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


    public func addQuestion(productId: String, question: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        addQuestion(productId: productId, question: question, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addQuestion(productId: String, question: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(question            , forKey: "question")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/question", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addQuestion(productId: productId, question: question, sessionId: sessionId, completion: completion,force: false)
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


    public func listQuestion(productId: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi?,String?) -> Void) {
        listQuestion(productId: productId, sort: sort, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listQuestion(productId: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(limit            , forKey: "limit")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/question", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_QuestionAnswerListApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listQuestion(productId: productId, sort: sort, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: false)
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


    public func addProductCart(productId: String, sellerId: String, colorId: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart?,String?) -> Void) {
        addProductCart(productId: productId, sellerId: sellerId, colorId: colorId, count: count, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func addProductCart(productId: String, sellerId: String, colorId: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sellerId            , forKey: "sellerId")
                    params.updateValue(colorId            , forKey: "colorId")
                    params.updateValue(count            , forKey: "count")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/add/product/cart", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProductCart
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.addProductCart(productId: productId, sellerId: sellerId, colorId: colorId, count: count, sessionId: sessionId, completion: completion,force: false)
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


    public func deleteProductCart(orderId: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        deleteProductCart(orderId: orderId, count: count, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func deleteProductCart(orderId: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(count            , forKey: "count")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/delete/product/cart", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.deleteProductCart(orderId: orderId, count: count, sessionId: sessionId, completion: completion,force: false)
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


    public func listProductCart(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi?,String?) -> Void) {
        listProductCart(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listProductCart(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/product/cart", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListProductCartApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listProductCart(sessionId: sessionId, completion: completion,force: false)
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


    public func listSendTimes(totalPrice: String, addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListPossibleTimes?,String?) -> Void) {
        listSendTimes(totalPrice: totalPrice, addressId: addressId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listSendTimes(totalPrice: String, addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListPossibleTimes?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(totalPrice            , forKey: "totalPrice")
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/sendtimes", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListPossibleTimes(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListPossibleTimes
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listSendTimes(totalPrice: totalPrice, addressId: addressId, sessionId: sessionId, completion: completion,force: false)
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


    public func updateAddress(priority: String, addressId: String, nickName: String, mobile: String, phone: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        updateAddress(priority: priority, addressId: addressId, nickName: nickName, mobile: mobile, phone: phone, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func updateAddress(priority: String, addressId: String, nickName: String, mobile: String, phone: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(priority            , forKey: "priority")
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(phone            , forKey: "phone")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(sector            , forKey: "sector")
                    params.updateValue(address            , forKey: "address")
                    params.updateValue(postalCode            , forKey: "postalCode")
                    params.updateValue(recipientName            , forKey: "recipientName")
                    params.updateValue(recipientPhone            , forKey: "recipientPhone")
                    params.updateValue(locationLatitude            , forKey: "locationLatitude")
                    params.updateValue(locationLongitude            , forKey: "locationLongitude")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/update/address", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.updateAddress(priority: priority, addressId: addressId, nickName: nickName, mobile: mobile, phone: phone, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: false)
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


    public func deleteAddress(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        deleteAddress(addressId: addressId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func deleteAddress(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/delete/address", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.deleteAddress(addressId: addressId, sessionId: sessionId, completion: completion,force: false)
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


    public func listAddress(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void) {
        listAddress(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listAddress(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/address", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_AddProduct
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listAddress(sessionId: sessionId, completion: completion,force: false)
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


    public func finalizeOrder(transportId: String, bankCode: String, discountCoupon: String, addressId: String, price: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_PaymentResult?,String?) -> Void) {
        finalizeOrder(transportId: transportId, bankCode: bankCode, discountCoupon: discountCoupon, addressId: addressId, price: price, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func finalizeOrder(transportId: String, bankCode: String, discountCoupon: String, addressId: String, price: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_PaymentResult?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(transportId            , forKey: "transportId")
                    params.updateValue(bankCode            , forKey: "bankCode")
                    params.updateValue(discountCoupon            , forKey: "discountCoupon")
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(price            , forKey: "price")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/finalize/order", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_PaymentResult(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_PaymentResult
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.finalizeOrder(transportId: transportId, bankCode: bankCode, discountCoupon: discountCoupon, addressId: addressId, price: price, sessionId: sessionId, completion: completion,force: false)
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


    public func listOrder(insertTime: String, orderStatus: String, payStatus: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListOrders?,String?) -> Void) {
        listOrder(insertTime: insertTime, orderStatus: orderStatus, payStatus: payStatus, sort: sort, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listOrder(insertTime: String, orderStatus: String, payStatus: String, sort: String, order: String, page: String, limit: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListOrders?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(insertTime            , forKey: "insertTime")
                    params.updateValue(orderStatus            , forKey: "orderStatus")
                    params.updateValue(payStatus            , forKey: "payStatus")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(limit            , forKey: "limit")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/orders", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListOrders(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListOrders
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listOrder(insertTime: insertTime, orderStatus: orderStatus, payStatus: payStatus, sort: sort, order: order, page: page, limit: limit, sessionId: sessionId, completion: completion,force: false)
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


    public func listUnits(type: String, list: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListUnits?,String?) -> Void) {
        listUnits(type: type, list: list, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listUnits(type: String, list: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListUnits?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(list            , forKey: "list")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/units", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListUnits(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListUnits
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listUnits(type: type, list: list, sessionId: sessionId, completion: completion,force: false)
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


    public func useCoupon(price: String, code: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_GetDiscountPrice?,String?) -> Void) {
        useCoupon(price: price, code: code, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func useCoupon(price: String, code: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_GetDiscountPrice?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(price            , forKey: "price")
                    params.updateValue(code            , forKey: "code")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/use/coupon", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_GetDiscountPrice(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_GetDiscountPrice
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.useCoupon(price: price, code: code, sessionId: sessionId, completion: completion,force: false)
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


    public func listCities(state: String, cities: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities?,String?) -> Void) {
        listCities(state: state, cities: cities, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func listCities(state: String, cities: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(state            , forKey: "state")
                    params.updateValue(cities            , forKey: "cities")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/list/cities", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ListCities
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.listCities(state: state, cities: cities, sessionId: sessionId, completion: completion,force: false)
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


    public func getProduct(productId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ProductGetApi?,String?) -> Void) {
        getProduct(productId: productId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func getProduct(productId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ProductGetApi?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,Any>()
                    params.updateValue(productId            , forKey: "productId")
                    params.updateValue(sessionId            , forKey: "sessionId")


        let hasNounce =  false
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/shop/get/product", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ProductGetApi(serializedData: result) as Com_Vasl_Vaslapp_Modules_Shop_Global_Proto_Holder_ProductGetApi
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.getProduct(productId: productId, sessionId: sessionId, completion: completion,force: false)
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
