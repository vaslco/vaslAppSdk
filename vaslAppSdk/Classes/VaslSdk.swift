//
//  VaslSdk.swift
//  VaslSdk
//
//  Created by Ali shatergholi on 1/2/18.
//  Copyright © 2018 Vaslapp. All rights reserved.
//
import Foundation
import UIKit

public class VaslSdk : Services {
    
    public typealias CompletionHandler<T>      = (_ result : T?,_ error : String?) -> Void
    
    init() {
        
    }
    
    public init(appId         : String,
                baseUrl       : String,
                clientId      : String,
                clientSecret  : String,
                username      : String,
                password      : String) {
        RestService.baseUrl                    = baseUrl
        RestService.appid                      = appId
        RestService.clientId                   = clientId
        RestService.clientSecret               = clientSecret
        RestService.username                   = username
        RestService.password                   = password
    }
    
    private static var analytic : analyticServiceV1Impl!
    public func analyticService() -> analyticServiceV1Impl! {
        if VaslSdk.analytic == nil {
            VaslSdk.analytic = analyticServiceV1Impl.init()
        }
        return VaslSdk.analytic
    }
    private static var appService : AppServicesImpl!
    public func appService() -> AppServicesImpl! {
        if VaslSdk.appService == nil {
            VaslSdk.appService = AppServicesImpl.init()
        }
        return VaslSdk.appService
    }
    
    private static var billing : BillingInappServiceV1Impl!
    public func billingInappService() -> BillingInappServiceV1Impl! {
        if VaslSdk.billing == nil {
            VaslSdk.billing = BillingInappServiceV1Impl.init()
        }
        return VaslSdk.billing
    }
    private static var charge : ChargeServiceV1Impl!
    public func chargeService() -> ChargeServiceV1Impl! {
        if VaslSdk.charge == nil {
            VaslSdk.charge = ChargeServiceV1Impl.init()
        }
        return VaslSdk.charge
    }
    
    private static var dynamicLink : DynamicLinkServiceV1Impl!
    public func dynamicLinkService() -> DynamicLinkServiceV1Impl! {
        if VaslSdk.dynamicLink == nil {
            VaslSdk.dynamicLink = DynamicLinkServiceV1Impl.init()
        }
        return VaslSdk.dynamicLink
    }
    
    private static var gameAction : GameActionServiceV2Impl!
    public func gameActionService() -> GameActionServiceV2Impl! {
        if VaslSdk.gameAction == nil {
            VaslSdk.gameAction = GameActionServiceV2Impl.init()
        }
        return VaslSdk.gameAction
    }
    
    private static var gameFeature : GameFeaturesServiceV2Impl!
    public func gameFeatureService() -> GameFeaturesServiceV2Impl! {
        if VaslSdk.gameFeature == nil {
            VaslSdk.gameFeature = GameFeaturesServiceV2Impl.init()
        }
        return VaslSdk.gameFeature
    }
    private static var leader : GameLeaderBoardServiceV2Impl!
    public func gameLeaderBoardService() -> GameLeaderBoardServiceV2Impl! {
        if VaslSdk.leader == nil {
            VaslSdk.leader = GameLeaderBoardServiceV2Impl.init()
        }
        return VaslSdk.leader
    }
    
    private static var pointType : GamePointTypeServiceV1Impl!
    public func gamePointTypeService() -> GamePointTypeServiceV1Impl! {
        if VaslSdk.pointType == nil {
            VaslSdk.pointType = GamePointTypeServiceV1Impl.init()
        }
        return VaslSdk.pointType
    }
    
    private static var gameUser : GameUserServiceV2Impl!
    public func gameUserService() -> GameUserServiceV2Impl! {
        if VaslSdk.gameUser == nil {
            VaslSdk.gameUser = GameUserServiceV2Impl.init()
        }
        return VaslSdk.gameUser
    }
    
    private static var gateway : GatewayServiceV1Impl!
    public func GatewayService() -> GatewayServiceV1Impl! {
        if VaslSdk.gateway == nil {
            VaslSdk.gateway = GatewayServiceV1Impl.init()
        }
        return VaslSdk.gateway
    }
    
    private static var league : LeagueServiceV1Impl!
    public func leagueService() -> LeagueServiceV1Impl! {
        if VaslSdk.league == nil {
            VaslSdk.league = LeagueServiceV1Impl.init()
        }
        return VaslSdk.league
    }
    
    private static var shop : ShopServiceV1Impl!
    public func shopService() -> ShopServiceV1Impl! {
        if VaslSdk.shop == nil {
            VaslSdk.shop = ShopServiceV1Impl.init()
        }
        return VaslSdk.shop
    }
    
    private static var support : SupportServiceV1Impl!
    public func supportService() -> SupportServiceV1Impl! {
        if VaslSdk.support == nil {
            VaslSdk.support = SupportServiceV1Impl.init()
        }
        return VaslSdk.support
    }
    
    private static var content : ContentServiceV2Impl!
    public func ContentService() -> ContentServiceV2Impl! {
        if VaslSdk.content == nil {
            VaslSdk.content = ContentServiceV2Impl.init()
        }
        return VaslSdk.content
    }
    
    private static var subcribe_v1 : SubscriberServiceV1Impl!
    public func SubscriberService() -> SubscriberServiceV1Impl! {
        if VaslSdk.subcribe_v1 == nil {
            VaslSdk.subcribe_v1 = SubscriberServiceV1Impl.init()
        }
        return VaslSdk.subcribe_v1
    }
    
    private static var subcribe_v2 : SubscriberServiceV2Impl!
    func SubscriberV2Service() -> SubscriberServiceV2Impl! {
        if VaslSdk.subcribe_v2 == nil {
            VaslSdk.subcribe_v2 = SubscriberServiceV2Impl.init()
        }
        return VaslSdk.subcribe_v2
    }
    
    private static var dynamicTable : DynamicTableServiceTablesV1Impl!
    public func dynamicTableService() -> DynamicTableServiceTablesV1Impl! {
        if VaslSdk.dynamicTable == nil {
            VaslSdk.dynamicTable = DynamicTableServiceTablesV1Impl.init()
        }
        return VaslSdk.dynamicTable
    }
    
    private static var dynamicTableEndPoint : DynamicTableServiceEndpointsV1Impl!
    public func dynamicTableEndPointService() -> DynamicTableServiceEndpointsV1Impl! {
        if VaslSdk.dynamicTableEndPoint == nil {
           VaslSdk.dynamicTableEndPoint = DynamicTableServiceEndpointsV1Impl.init()
        }
        return VaslSdk.dynamicTableEndPoint
    }
    
    private static var fileManager : FileManagerServiceV1Impl!
    public func fileManagerService() -> FileManagerServiceV1Impl! {
        if VaslSdk.fileManager == nil {
            VaslSdk.fileManager = FileManagerServiceV1Impl.init()
        }
        return VaslSdk.fileManager
    }
    
    private static var pushApp : PushFCMServiceV1Impl!
    public func PushAppService() -> PushFCMServiceV1Impl! {
        if VaslSdk.pushApp == nil {
            VaslSdk.pushApp = PushFCMServiceV1Impl.init()
        }
        return VaslSdk.pushApp
    }
}
