import Foundation

protocol NavazServiceV1 {

    func subscriberList(subscriberType: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void)

    func trackGet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackGet?,String?) -> Void)

    func subscriberMyProfile(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberUserProfile(subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberUpdate(nickName: String, firstName: String, lastName: String, image: String, gender: String, birthDate: String, email: String, defaultTrackQuality: String, accountType: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUpdate?,String?) -> Void)

    func subscriberAddressAdd(priority: String, nickName: String, mobile: String, phone: String, province: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressAdd?,String?) -> Void)

    func subscriberAddressUpdate(priority: String, addressId: String, nickName: String, mobile: String, phone: String, province: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressUpdate?,String?) -> Void)

    func subscriberAddressRemove(addressId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressRemove?,String?) -> Void)

    func subscriberAddressList(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void)

    func subscriberAddressDefault(addressId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressDefault?,String?) -> Void)

    func subscriberFollow(subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberFollow?,String?) -> Void)

    func subscriberUnfollow(subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUnfollow?,String?) -> Void)

    func subscriberFollowingList(sort: String, order: String, page: String, type: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void)

    func subscriberContactsUpdate(data: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberContactsUpdate?,String?) -> Void)

    func subscriberSearchList(keyword: String, subscriberType: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void)

    func subscriberSearchArtistList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void)

    func subscriberSearchUserList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void)

    func artistList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void)

    func artistTrackList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList?,String?) -> Void)

    func trackList(featured: String, sort: String, order: String, page: String, disableAlbums: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList?,String?) -> Void)

    func artistTrackListNoAlbum(artistId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList?,String?) -> Void)

    func artistAlbumList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList?,String?) -> Void)

    func artistVideoList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistVideoList?,String?) -> Void)

    func trackListNoAlbum(artistId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList?,String?) -> Void)

    func trackLikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeAdd?,String?) -> Void)

    func trackLikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeRemove?,String?) -> Void)

    func trackDislikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeAdd?,String?) -> Void)

    func trackDislikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeRemove?,String?) -> Void)

    func trackVideoList(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackVideoList?,String?) -> Void)

    func trackCommentAdd(trackId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentAdd?,String?) -> Void)

    func trackCommentUpdate(commentId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentUpdate?,String?) -> Void)

    func trackCommentRemove(commentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentRemove?,String?) -> Void)

    func trackCommentsList(trackId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentList?,String?) -> Void)

    func trackSearchList(keyword: String, sort: String, order: String, page: String, disableAlbums: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackSearchList?,String?) -> Void)

    func videoList(featured: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoList?,String?) -> Void)

    func videoGet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoGet?,String?) -> Void)

    func videoLikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeAdd?,String?) -> Void)

    func videoLikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeRemove?,String?) -> Void)

    func videoDislikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeAdd?,String?) -> Void)

    func videoDislikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeRemove?,String?) -> Void)

    func videoCommentAdd(videoId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentAdd?,String?) -> Void)

    func videoCommentUpdate(commentId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentUpdate?,String?) -> Void)

    func videoCommentRemove(commentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentRemove?,String?) -> Void)

    func videoCommentsList(videoId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentList?,String?) -> Void)

    func videoSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoSearchList?,String?) -> Void)

    func playlistList(featured: String, type: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void)

    func playlistListUser(page: String, subscriberId: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void)

    func playlistArtistList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList?,String?) -> Void)

    func playlistGet(id: String, artistId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet?,String?) -> Void)

    func playlistTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistTrackList?,String?) -> Void)

    func playlistLikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeAdd?,String?) -> Void)

    func playlistLikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeRemove?,String?) -> Void)

    func playlistDislikeAdd(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeAdd?,String?) -> Void)

    func playlistDislikeRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeRemove?,String?) -> Void)

    func playlistCommentAdd(playlistId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentAdd?,String?) -> Void)

    func playlistCommentUpdate(commentId: String, content: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentUpdate?,String?) -> Void)

    func playlistCommentRemove(commentId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentRemove?,String?) -> Void)

    func playlistCommentsList(playlistId: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentList?,String?) -> Void)

    func playlistSearchList(keyword: String, type: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void)

    func myPlaylistCreate(cover: String, title: String, titleEnglish: String, subType: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistCreate?,String?) -> Void)

    func myPlaylistList(page: String, sort: String, order: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistList?,String?) -> Void)

    func myPlaylistUpdate(id: String, cover: String, title: String, titleEnglish: String, subType: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistUpdate?,String?) -> Void)

    func myPlaylistDelete(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistDelete?,String?) -> Void)

    func myPlaylistGet(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistGet?,String?) -> Void)

    func myPlaylistTrackAdd(id: String, trackId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackAdd?,String?) -> Void)

    func myPlaylistTrackRemove(id: String, trackId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackRemove?,String?) -> Void)

    func myPlaylistTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackList?,String?) -> Void)

    func userPlaylistGet(id: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet?,String?) -> Void)

    func userPlaylistList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void)

    func userPlaylistSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void)

    func categoryList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList?,String?) -> Void)

    func categoryTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryTrackList?,String?) -> Void)

    func categoryFollow(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryFollow?,String?) -> Void)

    func categoryUnfollow(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryUnfollow?,String?) -> Void)

    func categoryFollowingList(sort: String, order: String, page: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList?,String?) -> Void)

    func categorySearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategorySearchList?,String?) -> Void)

    func moodList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList?,String?) -> Void)

    func moodTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodTrackList?,String?) -> Void)

    func moodFollow(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodFollow?,String?) -> Void)

    func moodUnfollow(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodUnfollow?,String?) -> Void)

    func moodFollowingList(sort: String, order: String, page: String, subscriberId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList?,String?) -> Void)

    func moodSearchList(sessionId: String, keyword: String, sort: String, order: String, page: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodSearchList?,String?) -> Void)

    func pageGet(key: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet?,String?) -> Void)

    func pageGetSubscriber(subscriberId: String, key: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet?,String?) -> Void)

    func subscriptionList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList?,String?) -> Void)

    func subscriptionActive(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionActive?,String?) -> Void)

    func shopCartPlaylistAdd(id: String, count: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistAdd?,String?) -> Void)

    func shopCartPlaylistUpdate(id: String, count: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistUpdate?,String?) -> Void)

    func shopCartPlaylistRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistRemove?,String?) -> Void)

    func shopCartItemUpdate(id: String, count: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate?,String?) -> Void)

    func shopCartItemInc(id: String, count: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate?,String?) -> Void)

    func shopCartItemRemove(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemRemove?,String?) -> Void)

    func shopCartItemClear(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemClear?,String?) -> Void)

    func shopCartItemList(sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList?,String?) -> Void)

    func shopCartValidate(addressId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartValidate?,String?) -> Void)

    func shopCartRegister(addressId: String, phone: String, mobile: String, description: String, bankCode: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister?,String?) -> Void)

    func shopSubscriptionRegister(id: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister?,String?) -> Void)

    func shopOrdersComplete(orderId: String, factorId: String, transactionId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersComplete?,String?) -> Void)

    func shopOrdersList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList?,String?) -> Void)

    func shopOrdersGet(orderId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersGet?,String?) -> Void)

    func shopMyOrdersList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void)

    func shopMyOrdersAlbumList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void)

    func shopMyOrdersSubscriptionList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void)

    func shopPlaylistList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void)

    func shopSubscriptionList(sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList?,String?) -> Void)

    func shopPlaylistSearchList(keyword: String, type: String, sort: String, order: String, page: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void)

    func searchAll(keyword: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SearchAll?,String?) -> Void)

    func checkOrderPaymentStatus(orderId: String, sessionId: String,completion : @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CheckOrderPaymentStatus?,String?) -> Void)


}


public class NavazServiceV1Impl  : NavazServiceV1 {


    public func subscriberList(subscriberType: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void) {
        subscriberList(subscriberType: subscriberType, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberList(subscriberType: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberType            , forKey: "subscriberType")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberList(subscriberType: subscriberType, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func trackGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackGet?,String?) -> Void) {
        trackGet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackGet(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberMyProfile(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberMyProfile(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberMyProfile(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/myprofile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet
                    
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
        }, force)
    }


    public func subscriberUserProfile(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberUserProfile(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberUserProfile(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/userprofile", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUserProfile(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberUpdate(nickName: String, firstName: String, lastName: String, image: String, gender: String, birthDate: String, email: String, defaultTrackQuality: String, accountType: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUpdate?,String?) -> Void) {
        subscriberUpdate(nickName: nickName, firstName: firstName, lastName: lastName, image: image, gender: gender, birthDate: birthDate, email: email, defaultTrackQuality: defaultTrackQuality, accountType: accountType, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberUpdate(nickName: String, firstName: String, lastName: String, image: String, gender: String, birthDate: String, email: String, defaultTrackQuality: String, accountType: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(firstName            , forKey: "firstName")
                    params.updateValue(lastName            , forKey: "lastName")
                    params.updateValue(gender            , forKey: "gender")
                    params.updateValue(birthDate            , forKey: "birthDate")
                    params.updateValue(email            , forKey: "email")
                    params.updateValue(defaultTrackQuality            , forKey: "defaultTrackQuality")
                    params.updateValue(accountType            , forKey: "accountType")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberUpdate(nickName: nickName, firstName: firstName, lastName: lastName, image: image, gender: gender, birthDate: birthDate, email: email, defaultTrackQuality: defaultTrackQuality, accountType: accountType, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberAddressAdd(priority: String, nickName: String, mobile: String, phone: String, province: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressAdd?,String?) -> Void) {
        subscriberAddressAdd(priority: priority, nickName: nickName, mobile: mobile, phone: phone, province: province, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberAddressAdd(priority: String, nickName: String, mobile: String, phone: String, province: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(priority            , forKey: "priority")
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(phone            , forKey: "phone")
                    params.updateValue(province            , forKey: "province")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(sector            , forKey: "sector")
                    params.updateValue(address            , forKey: "address")
                    params.updateValue(postalCode            , forKey: "postalCode")
                    params.updateValue(recipientName            , forKey: "recipientName")
                    params.updateValue(recipientPhone            , forKey: "recipientPhone")
                    params.updateValue(locationLatitude            , forKey: "locationLatitude")
                    params.updateValue(locationLongitude            , forKey: "locationLongitude")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/address/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberAddressAdd(priority: priority, nickName: nickName, mobile: mobile, phone: phone, province: province, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberAddressUpdate(priority: String, addressId: String, nickName: String, mobile: String, phone: String, province: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressUpdate?,String?) -> Void) {
        subscriberAddressUpdate(priority: priority, addressId: addressId, nickName: nickName, mobile: mobile, phone: phone, province: province, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberAddressUpdate(priority: String, addressId: String, nickName: String, mobile: String, phone: String, province: String, city: String, sector: String, address: String, postalCode: String, recipientName: String, recipientPhone: String, locationLatitude: String, locationLongitude: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(priority            , forKey: "priority")
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(nickName            , forKey: "nickName")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(phone            , forKey: "phone")
                    params.updateValue(province            , forKey: "province")
                    params.updateValue(city            , forKey: "city")
                    params.updateValue(sector            , forKey: "sector")
                    params.updateValue(address            , forKey: "address")
                    params.updateValue(postalCode            , forKey: "postalCode")
                    params.updateValue(recipientName            , forKey: "recipientName")
                    params.updateValue(recipientPhone            , forKey: "recipientPhone")
                    params.updateValue(locationLatitude            , forKey: "locationLatitude")
                    params.updateValue(locationLongitude            , forKey: "locationLongitude")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/address/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberAddressUpdate(priority: priority, addressId: addressId, nickName: nickName, mobile: mobile, phone: phone, province: province, city: city, sector: sector, address: address, postalCode: postalCode, recipientName: recipientName, recipientPhone: recipientPhone, locationLatitude: locationLatitude, locationLongitude: locationLongitude, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberAddressRemove(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressRemove?,String?) -> Void) {
        subscriberAddressRemove(addressId: addressId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberAddressRemove(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/address/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberAddressRemove(addressId: addressId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberAddressList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void) {
        subscriberAddressList(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberAddressList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/address/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberAddressList(sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberAddressDefault(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressDefault?,String?) -> Void) {
        subscriberAddressDefault(addressId: addressId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberAddressDefault(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressDefault?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/address/default", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressDefault(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberAddressDefault
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberAddressDefault(addressId: addressId, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberFollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberFollow?,String?) -> Void) {
        subscriberFollow(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberFollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberFollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/follow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberFollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberFollow
                    
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
        }, force)
    }


    public func subscriberUnfollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUnfollow?,String?) -> Void) {
        subscriberUnfollow(subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberUnfollow(subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUnfollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/unfollow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUnfollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberUnfollow
                    
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
        }, force)
    }


    public func subscriberFollowingList(sort: String, order: String, page: String, type: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void) {
        subscriberFollowingList(sort: sort, order: order, page: page, type: type, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberFollowingList(sort: String, order: String, page: String, type: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/following/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList
                    
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
        }, force)
    }


    public func subscriberContactsUpdate(data: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberContactsUpdate?,String?) -> Void) {
        subscriberContactsUpdate(data: data, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberContactsUpdate(data: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberContactsUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(data            , forKey: "data")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/contacts/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberContactsUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberContactsUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberContactsUpdate(data: data, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberSearchList(keyword: String, subscriberType: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void) {
        subscriberSearchList(keyword: keyword, subscriberType: subscriberType, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberSearchList(keyword: String, subscriberType: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(subscriberType            , forKey: "subscriberType")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberSearchList(keyword: keyword, subscriberType: subscriberType, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberSearchArtistList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void) {
        subscriberSearchArtistList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberSearchArtistList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/search/artist", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberSearchArtistList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriberSearchUserList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void) {
        subscriberSearchUserList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriberSearchUserList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscriber/search/user", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriberSearchUserList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func artistList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void) {
        artistList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func artistList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/artist/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriberList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.artistList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func artistTrackList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList?,String?) -> Void) {
        artistTrackList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func artistTrackList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/artist/track/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.artistTrackList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func trackList(featured: String, sort: String, order: String, page: String, disableAlbums: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList?,String?) -> Void) {
        trackList(featured: featured, sort: sort, order: order, page: page, disableAlbums: disableAlbums, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackList(featured: String, sort: String, order: String, page: String, disableAlbums: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(featured            , forKey: "featured")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(disableAlbums            , forKey: "disableAlbums")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackList(featured: featured, sort: sort, order: order, page: page, disableAlbums: disableAlbums, sessionId: sessionId, completion: completion,force: false)
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


    public func artistTrackListNoAlbum(artistId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList?,String?) -> Void) {
        artistTrackListNoAlbum(artistId: artistId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func artistTrackListNoAlbum(artistId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/artist/track/list/noalbum", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistTrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.artistTrackListNoAlbum(artistId: artistId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func artistAlbumList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList?,String?) -> Void) {
        artistAlbumList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func artistAlbumList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/artist/album/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.artistAlbumList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func artistVideoList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistVideoList?,String?) -> Void) {
        artistVideoList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func artistVideoList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/artist/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.artistVideoList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func trackListNoAlbum(artistId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList?,String?) -> Void) {
        trackListNoAlbum(artistId: artistId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackListNoAlbum(artistId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/list/noalbum", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackListNoAlbum(artistId: artistId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func trackLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeAdd?,String?) -> Void) {
        trackLikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/like/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackLikeAdd(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func trackLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeRemove?,String?) -> Void) {
        trackLikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/like/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackLikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackLikeRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func trackDislikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeAdd?,String?) -> Void) {
        trackDislikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackDislikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/dislike/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackDislikeAdd(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func trackDislikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeRemove?,String?) -> Void) {
        trackDislikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackDislikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/dislike/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackDislikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackDislikeRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func trackVideoList(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackVideoList?,String?) -> Void) {
        trackVideoList(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackVideoList(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackVideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackVideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackVideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackVideoList(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func trackCommentAdd(trackId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentAdd?,String?) -> Void) {
        trackCommentAdd(trackId: trackId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackCommentAdd(trackId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(trackId            , forKey: "trackId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentAdd(trackId: trackId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func trackCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentUpdate?,String?) -> Void) {
        trackCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func trackCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentRemove?,String?) -> Void) {
        trackCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: false)
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


    public func trackCommentsList(trackId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentList?,String?) -> Void) {
        trackCommentsList(trackId: trackId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackCommentsList(trackId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(trackId            , forKey: "trackId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackCommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackCommentsList(trackId: trackId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func trackSearchList(keyword: String, sort: String, order: String, page: String, disableAlbums: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackSearchList?,String?) -> Void) {
        trackSearchList(keyword: keyword, sort: sort, order: order, page: page, disableAlbums: disableAlbums, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func trackSearchList(keyword: String, sort: String, order: String, page: String, disableAlbums: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(disableAlbums            , forKey: "disableAlbums")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/track/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_TrackSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.trackSearchList(keyword: keyword, sort: sort, order: order, page: page, disableAlbums: disableAlbums, sessionId: sessionId, completion: completion,force: false)
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


    public func videoList(featured: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoList?,String?) -> Void) {
        videoList(featured: featured, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoList(featured: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(featured            , forKey: "featured")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoList(featured: featured, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func videoGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoGet?,String?) -> Void) {
        videoGet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoGet
                    
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
        }, force)
    }


    public func videoLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeAdd?,String?) -> Void) {
        videoLikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/like/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeAdd
                    
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
        }, force)
    }


    public func videoLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeRemove?,String?) -> Void) {
        videoLikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/like/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoLikeRemove
                    
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
        }, force)
    }


    public func videoDislikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeAdd?,String?) -> Void) {
        videoDislikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoDislikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/dislike/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoDislikeAdd(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func videoDislikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeRemove?,String?) -> Void) {
        videoDislikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoDislikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/dislike/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoDislikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoDislikeRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func videoCommentAdd(videoId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentAdd?,String?) -> Void) {
        videoCommentAdd(videoId: videoId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentAdd(videoId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(videoId            , forKey: "videoId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentAdd
                    
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
        }, force)
    }


    public func videoCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentUpdate?,String?) -> Void) {
        videoCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentUpdate
                    
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
        }, force)
    }


    public func videoCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentRemove?,String?) -> Void) {
        videoCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentRemove
                    
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
        }, force)
    }


    public func videoCommentsList(videoId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentList?,String?) -> Void) {
        videoCommentsList(videoId: videoId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoCommentsList(videoId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(videoId            , forKey: "videoId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoCommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.videoCommentsList(videoId: videoId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func videoSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoSearchList?,String?) -> Void) {
        videoSearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func videoSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/video/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_VideoSearchList
                    
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
        }, force)
    }


    public func playlistList(featured: String, type: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void) {
        playlistList(featured: featured, type: type, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistList(featured: String, type: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(featured            , forKey: "featured")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistList(featured: featured, type: type, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistListUser(page: String, subscriberId: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void) {
        playlistListUser(page: page, subscriberId: subscriberId, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistListUser(page: String, subscriberId: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/list/user", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistListUser(page: page, subscriberId: subscriberId, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistArtistList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList?,String?) -> Void) {
        playlistArtistList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistArtistList(artistId: String, page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/list/artist", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ArtistAlbumList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistArtistList(artistId: artistId, page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistGet(id: String, artistId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet?,String?) -> Void) {
        playlistGet(id: id, artistId: artistId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistGet(id: String, artistId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(artistId            , forKey: "artistId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistGet(id: id, artistId: artistId, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistTrackList?,String?) -> Void) {
        playlistTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistTrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/track/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistTrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistTrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeAdd?,String?) -> Void) {
        playlistLikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistLikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/like/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistLikeAdd(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeRemove?,String?) -> Void) {
        playlistLikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistLikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/like/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistLikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistLikeRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistDislikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeAdd?,String?) -> Void) {
        playlistDislikeAdd(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistDislikeAdd(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/dislike/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistDislikeAdd(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistDislikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeRemove?,String?) -> Void) {
        playlistDislikeRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistDislikeRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/dislike/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistDislikeRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistDislikeRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistCommentAdd(playlistId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentAdd?,String?) -> Void) {
        playlistCommentAdd(playlistId: playlistId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistCommentAdd(playlistId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(playlistId            , forKey: "playlistId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/comment/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistCommentAdd(playlistId: playlistId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentUpdate?,String?) -> Void) {
        playlistCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistCommentUpdate(commentId: String, content: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(content            , forKey: "content")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/comment/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistCommentUpdate(commentId: commentId, content: content, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentRemove?,String?) -> Void) {
        playlistCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistCommentRemove(commentId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(commentId            , forKey: "commentId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/comment/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistCommentRemove(commentId: commentId, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistCommentsList(playlistId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentList?,String?) -> Void) {
        playlistCommentsList(playlistId: playlistId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistCommentsList(playlistId: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(playlistId            , forKey: "playlistId")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/comment/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistCommentList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistCommentsList(playlistId: playlistId, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func playlistSearchList(keyword: String, type: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void) {
        playlistSearchList(keyword: keyword, type: type, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func playlistSearchList(keyword: String, type: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/playlist/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.playlistSearchList(keyword: keyword, type: type, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistCreate(cover: String, title: String, titleEnglish: String, subType: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistCreate?,String?) -> Void) {
        myPlaylistCreate(cover: cover, title: title, titleEnglish: titleEnglish, subType: subType, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistCreate(cover: String, title: String, titleEnglish: String, subType: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistCreate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(titleEnglish            , forKey: "titleEnglish")
                    params.updateValue(subType            , forKey: "subType")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/create", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistCreate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistCreate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistCreate(cover: cover, title: title, titleEnglish: titleEnglish, subType: subType, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistList(page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistList?,String?) -> Void) {
        myPlaylistList(page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistList(page: String, sort: String, order: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistList(page: page, sort: sort, order: order, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistUpdate(id: String, cover: String, title: String, titleEnglish: String, subType: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistUpdate?,String?) -> Void) {
        myPlaylistUpdate(id: id, cover: cover, title: title, titleEnglish: titleEnglish, subType: subType, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistUpdate(id: String, cover: String, title: String, titleEnglish: String, subType: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(title            , forKey: "title")
                    params.updateValue(titleEnglish            , forKey: "titleEnglish")
                    params.updateValue(subType            , forKey: "subType")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistUpdate(id: id, cover: cover, title: title, titleEnglish: titleEnglish, subType: subType, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistDelete(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistDelete?,String?) -> Void) {
        myPlaylistDelete(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistDelete(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistDelete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/delete", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistDelete(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistDelete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistDelete(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistGet?,String?) -> Void) {
        myPlaylistGet(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistGet(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistGet(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistTrackAdd(id: String, trackId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackAdd?,String?) -> Void) {
        myPlaylistTrackAdd(id: id, trackId: trackId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistTrackAdd(id: String, trackId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(trackId            , forKey: "trackId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/track/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistTrackAdd(id: id, trackId: trackId, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistTrackRemove(id: String, trackId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackRemove?,String?) -> Void) {
        myPlaylistTrackRemove(id: id, trackId: trackId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistTrackRemove(id: String, trackId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(trackId            , forKey: "trackId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/track/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistTrackRemove(id: id, trackId: trackId, sessionId: sessionId, completion: completion,force: false)
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


    public func myPlaylistTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackList?,String?) -> Void) {
        myPlaylistTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func myPlaylistTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/myplaylist/track/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MyPlaylistTrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.myPlaylistTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func userPlaylistGet(id: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet?,String?) -> Void) {
        userPlaylistGet(id: id, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func userPlaylistGet(id: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/userplaylist/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.userPlaylistGet(id: id, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func userPlaylistList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void) {
        userPlaylistList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func userPlaylistList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/userplaylist/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.userPlaylistList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func userPlaylistSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void) {
        userPlaylistSearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func userPlaylistSearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/userplaylist/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.userPlaylistSearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func categoryList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList?,String?) -> Void) {
        categoryList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func categoryList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/category/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.categoryList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func categoryTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryTrackList?,String?) -> Void) {
        categoryTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func categoryTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryTrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/category/track/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryTrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryTrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.categoryTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func categoryFollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryFollow?,String?) -> Void) {
        categoryFollow(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func categoryFollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryFollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/category/follow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryFollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryFollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.categoryFollow(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func categoryUnfollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryUnfollow?,String?) -> Void) {
        categoryUnfollow(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func categoryUnfollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryUnfollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/category/unfollow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryUnfollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryUnfollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.categoryUnfollow(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func categoryFollowingList(sort: String, order: String, page: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList?,String?) -> Void) {
        categoryFollowingList(sort: sort, order: order, page: page, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func categoryFollowingList(sort: String, order: String, page: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/category/following/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategoryList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.categoryFollowingList(sort: sort, order: order, page: page, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func categorySearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategorySearchList?,String?) -> Void) {
        categorySearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func categorySearchList(keyword: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategorySearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/category/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategorySearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CategorySearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.categorySearchList(keyword: keyword, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func moodList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList?,String?) -> Void) {
        moodList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func moodList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/mood/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.moodList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func moodTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodTrackList?,String?) -> Void) {
        moodTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func moodTrackList(id: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodTrackList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/mood/track/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodTrackList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodTrackList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.moodTrackList(id: id, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func moodFollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodFollow?,String?) -> Void) {
        moodFollow(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func moodFollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodFollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/mood/follow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodFollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodFollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.moodFollow(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func moodUnfollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodUnfollow?,String?) -> Void) {
        moodUnfollow(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func moodUnfollow(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodUnfollow?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/mood/unfollow", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodUnfollow(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodUnfollow
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.moodUnfollow(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func moodFollowingList(sort: String, order: String, page: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList?,String?) -> Void) {
        moodFollowingList(sort: sort, order: order, page: page, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func moodFollowingList(sort: String, order: String, page: String, subscriberId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/mood/following/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.moodFollowingList(sort: sort, order: order, page: page, subscriberId: subscriberId, sessionId: sessionId, completion: completion,force: false)
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


    public func moodSearchList(sessionId: String, keyword: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodSearchList?,String?) -> Void) {
        moodSearchList(sessionId: sessionId, keyword: keyword, sort: sort, order: order, page: page, completion: completion,force: true)
    }
    
    private func moodSearchList(sessionId: String, keyword: String, sort: String, order: String, page: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/mood/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_MoodSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.moodSearchList(sessionId: sessionId, keyword: keyword, sort: sort, order: order, page: page, completion: completion,force: false)
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


    public func pageGet(key: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet?,String?) -> Void) {
        pageGet(key: key, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func pageGet(key: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(key            , forKey: "key")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/page/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.pageGet(key: key, sessionId: sessionId, completion: completion,force: false)
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


    public func pageGetSubscriber(subscriberId: String, key: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet?,String?) -> Void) {
        pageGetSubscriber(subscriberId: subscriberId, key: key, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func pageGetSubscriber(subscriberId: String, key: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(subscriberId            , forKey: "subscriberId")
                    params.updateValue(key            , forKey: "key")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/page/get/subscriber", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PageGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.pageGetSubscriber(subscriberId: subscriberId, key: key, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriptionList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList?,String?) -> Void) {
        subscriptionList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriptionList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscription/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriptionList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func subscriptionActive(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionActive?,String?) -> Void) {
        subscriptionActive(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func subscriptionActive(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionActive?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/subscription/active", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionActive(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionActive
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.subscriptionActive(sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartPlaylistAdd(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistAdd?,String?) -> Void) {
        shopCartPlaylistAdd(id: id, count: count, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartPlaylistAdd(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistAdd?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(count            , forKey: "count")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/playlist/add", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistAdd(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistAdd
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartPlaylistAdd(id: id, count: count, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartPlaylistUpdate(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistUpdate?,String?) -> Void) {
        shopCartPlaylistUpdate(id: id, count: count, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartPlaylistUpdate(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(count            , forKey: "count")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/playlist/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartPlaylistUpdate(id: id, count: count, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartPlaylistRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistRemove?,String?) -> Void) {
        shopCartPlaylistRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartPlaylistRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/playlist/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartPlaylistRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartPlaylistRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartItemUpdate(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate?,String?) -> Void) {
        shopCartItemUpdate(id: id, count: count, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartItemUpdate(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(count            , forKey: "count")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/item/update", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartItemUpdate(id: id, count: count, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartItemInc(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate?,String?) -> Void) {
        shopCartItemInc(id: id, count: count, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartItemInc(id: String, count: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(count            , forKey: "count")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/item/inc", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemUpdate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartItemInc(id: id, count: count, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartItemRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemRemove?,String?) -> Void) {
        shopCartItemRemove(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartItemRemove(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemRemove?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/item/remove", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemRemove(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemRemove
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartItemRemove(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartItemClear(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemClear?,String?) -> Void) {
        shopCartItemClear(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartItemClear(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemClear?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/item/clear", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemClear(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemClear
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartItemClear(sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartItemList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList?,String?) -> Void) {
        shopCartItemList(sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartItemList(sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/item/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartItemList(sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartValidate(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartValidate?,String?) -> Void) {
        shopCartValidate(addressId: addressId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartValidate(addressId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartValidate?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/validate", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartValidate(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartValidate
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartValidate(addressId: addressId, sessionId: sessionId, completion: completion,force: false)
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


    public func shopCartRegister(addressId: String, phone: String, mobile: String, description: String, bankCode: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister?,String?) -> Void) {
        shopCartRegister(addressId: addressId, phone: phone, mobile: mobile, description: description, bankCode: bankCode, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopCartRegister(addressId: String, phone: String, mobile: String, description: String, bankCode: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(addressId            , forKey: "addressId")
                    params.updateValue(phone            , forKey: "phone")
                    params.updateValue(mobile            , forKey: "mobile")
                    params.updateValue(description            , forKey: "description")
                    params.updateValue(bankCode            , forKey: "bankCode")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/cart/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopCartRegister(addressId: addressId, phone: phone, mobile: mobile, description: description, bankCode: bankCode, sessionId: sessionId, completion: completion,force: false)
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


    public func shopSubscriptionRegister(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister?,String?) -> Void) {
        shopSubscriptionRegister(id: id, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopSubscriptionRegister(id: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(id            , forKey: "id")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/subscription/register", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartRegister
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopSubscriptionRegister(id: id, sessionId: sessionId, completion: completion,force: false)
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


    public func shopOrdersComplete(orderId: String, factorId: String, transactionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersComplete?,String?) -> Void) {
        shopOrdersComplete(orderId: orderId, factorId: factorId, transactionId: transactionId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopOrdersComplete(orderId: String, factorId: String, transactionId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersComplete?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(factorId            , forKey: "factorId")
                    params.updateValue(transactionId            , forKey: "transactionId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/orders/complete", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersComplete(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersComplete
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopOrdersComplete(orderId: orderId, factorId: factorId, transactionId: transactionId, sessionId: sessionId, completion: completion,force: false)
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


    public func shopOrdersList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList?,String?) -> Void) {
        shopOrdersList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopOrdersList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/orders/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopCartItemList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopOrdersList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func shopOrdersGet(orderId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersGet?,String?) -> Void) {
        shopOrdersGet(orderId: orderId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopOrdersGet(orderId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersGet?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/orders/get", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersGet(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersGet
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopOrdersGet(orderId: orderId, sessionId: sessionId, completion: completion,force: false)
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


    public func shopMyOrdersList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void) {
        shopMyOrdersList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopMyOrdersList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/myorders/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopMyOrdersList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func shopMyOrdersAlbumList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void) {
        shopMyOrdersAlbumList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopMyOrdersAlbumList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/myorders/album/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopMyOrdersAlbumList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func shopMyOrdersSubscriptionList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void) {
        shopMyOrdersSubscriptionList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopMyOrdersSubscriptionList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/myorders/subscription/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_ShopOrdersList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopMyOrdersSubscriptionList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func shopPlaylistList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void) {
        shopPlaylistList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopPlaylistList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/playlist/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopPlaylistList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func shopSubscriptionList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList?,String?) -> Void) {
        shopSubscriptionList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopSubscriptionList(sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/subscription/list", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SubscriptionList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopSubscriptionList(sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func shopPlaylistSearchList(keyword: String, type: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void) {
        shopPlaylistSearchList(keyword: keyword, type: type, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func shopPlaylistSearchList(keyword: String, type: String, sort: String, order: String, page: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(type            , forKey: "type")
                    params.updateValue(sort            , forKey: "sort")
                    params.updateValue(order            , forKey: "order")
                    params.updateValue(page            , forKey: "page")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/shop/playlist/search", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_PlaylistSearchList
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.shopPlaylistSearchList(keyword: keyword, type: type, sort: sort, order: order, page: page, sessionId: sessionId, completion: completion,force: false)
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


    public func searchAll(keyword: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SearchAll?,String?) -> Void) {
        searchAll(keyword: keyword, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func searchAll(keyword: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SearchAll?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(keyword            , forKey: "keyword")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/search/all", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SearchAll(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_SearchAll
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.searchAll(keyword: keyword, sessionId: sessionId, completion: completion,force: false)
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


    public func checkOrderPaymentStatus(orderId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CheckOrderPaymentStatus?,String?) -> Void) {
        checkOrderPaymentStatus(orderId: orderId, sessionId: sessionId, completion: completion,force: true)
    }
    
    private func checkOrderPaymentStatus(orderId: String, sessionId: String,completion: @escaping (Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CheckOrderPaymentStatus?,String?) -> Void,force : Bool) {
        var params = Dictionary<String,String>()
                    params.updateValue(orderId            , forKey: "orderId")
                    params.updateValue(sessionId            , forKey: "sessionId")
        RestService.post(url: PublicValue.getUrlBase() + "/api/v1/navaz/check/Order/Payment/Status", params, completion: { (result, error) in
            do{
                if let result = result {
                    
                    let serviceResponse = try Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CheckOrderPaymentStatus(serializedData: result) as Com_Vasl_Vaslapp_Products_Navaz_Proto_Holder_CheckOrderPaymentStatus
                    
                    if serviceResponse.status == PublicValue.status_success {
                        completion(serviceResponse,nil)
                    } else {
                        if serviceResponse.code == 401 && force {
                            self.checkOrderPaymentStatus(orderId: orderId, sessionId: sessionId, completion: completion,force: false)
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
