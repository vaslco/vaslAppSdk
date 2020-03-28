import Foundation

protocol AvService {

    func listMeal(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListMealApi?,String?) -> Void)

    func listSport(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportApi?,String?) -> Void)

    func listFederation(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFederationApi?,String?) -> Void)

    func listSportEquipment(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListSportEquipmentApi?,String?) -> Void)

    func listPhrase(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListPhraseApi?,String?) -> Void)

    func listFoodPackage(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListFoodPackageApi?,String?) -> Void)

    func listExercise(sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Av_Proto_Holder_ListExerciseApi?,String?) -> Void)


}


public class AvServiceImpl  : AvService {


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


}
