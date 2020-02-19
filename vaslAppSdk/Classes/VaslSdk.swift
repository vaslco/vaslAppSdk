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
                password      : String,
                nounce        : String?) {
        RestService.baseUrl                    = baseUrl
        RestService.appid                      = appId
        RestService.clientId                   = clientId
        RestService.clientSecret               = clientSecret
        RestService.username                   = username
        RestService.password                   = password
        RestService.nounce                     = nounce!
        
    }
    
    private static var analytic : AnalyticServiceV1Impl!
    public func AnalyticService() -> AnalyticServiceV1Impl! {
        if VaslSdk.analytic == nil {
            VaslSdk.analytic = AnalyticServiceV1Impl.init()
        }
        return VaslSdk.analytic
    }
    private static var appService : AppServicesImpl!
    public func AppService() -> AppServicesImpl! {
        if VaslSdk.appService == nil {
            VaslSdk.appService = AppServicesImpl.init()
        }
        return VaslSdk.appService
    }
    
    private static var appVersionService : AppVersionServiceV1Impl!
    public func AppVersionService() -> AppVersionServiceV1Impl! {
        if VaslSdk.appVersionService == nil {
            VaslSdk.appVersionService = AppVersionServiceV1Impl.init()
        }
        return VaslSdk.appVersionService
    }
    
    private static var avatarService : AvatarServiceV1Impl!
    public func AvatarService() -> AvatarServiceV1Impl! {
        if VaslSdk.avatarService == nil {
            VaslSdk.avatarService = AvatarServiceV1Impl.init()
        }
        return VaslSdk.avatarService
    }
    
    private static var billing : BillingInappServiceV1Impl!
    public func BillingInappService() -> BillingInappServiceV1Impl! {
        if VaslSdk.billing == nil {
            VaslSdk.billing = BillingInappServiceV1Impl.init()
        }
        return VaslSdk.billing
    }
    private static var charge : ChargeServiceV1Impl!
    public func ChargeService() -> ChargeServiceV1Impl! {
        if VaslSdk.charge == nil {
            VaslSdk.charge = ChargeServiceV1Impl.init()
        }
        return VaslSdk.charge
    }
    
    private static var dynamicLink : DynamicLinkServiceV1Impl!
    public func DynamicLinkService() -> DynamicLinkServiceV1Impl! {
        if VaslSdk.dynamicLink == nil {
            VaslSdk.dynamicLink = DynamicLinkServiceV1Impl.init()
        }
        return VaslSdk.dynamicLink
    }
    
    private static var dynamicTable : DynamicTableServiceTablesV1Impl!
    public func DynamicTableService() -> DynamicTableServiceTablesV1Impl! {
        if VaslSdk.dynamicTable == nil {
            VaslSdk.dynamicTable = DynamicTableServiceTablesV1Impl.init()
        }
        return VaslSdk.dynamicTable
    }
    
    private static var dynamicTableEndPoint : DynamicTableServiceEndpointsV1Impl!
    public func DynamicTableEndPointService() -> DynamicTableServiceEndpointsV1Impl! {
        if VaslSdk.dynamicTableEndPoint == nil {
            VaslSdk.dynamicTableEndPoint = DynamicTableServiceEndpointsV1Impl.init()
        }
        return VaslSdk.dynamicTableEndPoint
    }
    
    
    private static var fileManager : FileManagerServiceV1Impl!
    public func FileManagerService() -> FileManagerServiceV1Impl! {
        if VaslSdk.fileManager == nil {
            VaslSdk.fileManager = FileManagerServiceV1Impl.init()
        }
        return VaslSdk.fileManager
    }
  

    private static var gameAction_V2 : GameActionServiceV2Impl!
    public func GameActionServiceV2() -> GameActionServiceV2Impl! {
        if VaslSdk.gameAction_V2 == nil {
            VaslSdk.gameAction_V2 = GameActionServiceV2Impl.init()
        }
        return VaslSdk.gameAction_V2
    }
    private static var gameAction_V1 : GameActionServiceV1Impl!
    public func GameActionServiceV1() -> GameActionServiceV1Impl! {
        if VaslSdk.gameAction_V1 == nil {
            VaslSdk.gameAction_V1 = GameActionServiceV1Impl.init()
        }
        return VaslSdk.gameAction_V1
    }
    
    private static var gameFeature_V2 : GameFeaturesServiceV2Impl!
    public func GameFeatureServiceV2() -> GameFeaturesServiceV2Impl! {
        if VaslSdk.gameFeature_V2 == nil {
            VaslSdk.gameFeature_V2 = GameFeaturesServiceV2Impl.init()
        }
        return VaslSdk.gameFeature_V2
    }
    private static var gameFeature_V1 : GameFeaturesServiceV1Impl!
    public func GameFeatureServiceV1() -> GameFeaturesServiceV1Impl! {
        if VaslSdk.gameFeature_V1 == nil {
            VaslSdk.gameFeature_V1 = GameFeaturesServiceV1Impl.init()
        }
        return VaslSdk.gameFeature_V1
    }
    private static var leader_V2 : GameLeaderBoardServiceV2Impl!
    public func GameLeaderBoardServiceV2() -> GameLeaderBoardServiceV2Impl! {
        if VaslSdk.leader_V2 == nil {
            VaslSdk.leader_V2 = GameLeaderBoardServiceV2Impl.init()
        }
        return VaslSdk.leader_V2
    }
    private static var leader_V1 : GameLeaderBoardServiceV1Impl!
    public func GameLeaderBoardServiceV1() -> GameLeaderBoardServiceV1Impl! {
        if VaslSdk.leader_V1 == nil {
            VaslSdk.leader_V1 = GameLeaderBoardServiceV1Impl.init()
        }
        return VaslSdk.leader_V1
    }
    
    private static var pointType : GamePointTypeServiceV1Impl!
    public func GamePointTypeService() -> GamePointTypeServiceV1Impl! {
        if VaslSdk.pointType == nil {
            VaslSdk.pointType = GamePointTypeServiceV1Impl.init()
        }
        return VaslSdk.pointType
    }
    
    private static var pazh : PazhServiceV1Impl!
    public func PazhService() -> PazhServiceV1Impl! {
        if VaslSdk.pazh == nil {
            VaslSdk.pazh = PazhServiceV1Impl.init()
        }
        return VaslSdk.pazh
    }
    
    private static var gamePointService : GamePointServiceV2Impl!
    public func GamePointService() -> GamePointServiceV2Impl! {
        if VaslSdk.gamePointService == nil {
            VaslSdk.gamePointService = GamePointServiceV2Impl.init()
        }
        return VaslSdk.gamePointService
    }
    
    private static var gameUser_V2 : GameUserServiceV2Impl!
    public func GameUserServiceV2() -> GameUserServiceV2Impl! {
        if VaslSdk.gameUser_V2 == nil {
            VaslSdk.gameUser_V2 = GameUserServiceV2Impl.init()
        }
        return VaslSdk.gameUser_V2
    }
    private static var gameUser_V1 : GameUsersServiceV1Impl!
    public func GameUserServiceV1() -> GameUsersServiceV1Impl! {
        if VaslSdk.gameUser_V1 == nil {
            VaslSdk.gameUser_V1 = GameUsersServiceV1Impl.init()
        }
        return VaslSdk.gameUser_V1
    }
    
    private static var gateway : GatewayServiceV1Impl!
    public func GatewayService() -> GatewayServiceV1Impl! {
        if VaslSdk.gateway == nil {
            VaslSdk.gateway = GatewayServiceV1Impl.init()
        }
        return VaslSdk.gateway
    }
    
    private static var geo : GeoServiceV1Impl!
    public func GeoService() -> GeoServiceV1Impl! {
        if VaslSdk.geo == nil {
            VaslSdk.geo = GeoServiceV1Impl.init()
        }
        return VaslSdk.geo
    }
    
    private static var league : LeagueServiceV1Impl!
    public func LeagueService() -> LeagueServiceV1Impl! {
        if VaslSdk.league == nil {
            VaslSdk.league = LeagueServiceV1Impl.init()
        }
        return VaslSdk.league
    }
    
    private static var referral : ReferralServiceV1Impl!
    public func ReferralService() -> ReferralServiceV1Impl! {
        if VaslSdk.referral == nil {
            VaslSdk.referral = ReferralServiceV1Impl.init()
        }
        return VaslSdk.referral
    }
    
    private static var shop : ShopServiceV1Impl!
    public func ShopService() -> ShopServiceV1Impl! {
        if VaslSdk.shop == nil {
            VaslSdk.shop = ShopServiceV1Impl.init()
        }
        return VaslSdk.shop
    }
    
    private static var support : SupportServiceV1Impl!
    public func SupportService() -> SupportServiceV1Impl! {
        if VaslSdk.support == nil {
            VaslSdk.support = SupportServiceV1Impl.init()
        }
        return VaslSdk.support
    }
    
    private static var content : ContentServiceV1Impl!
    public func ContentService() -> ContentServiceV1Impl! {
        if VaslSdk.content == nil {
            VaslSdk.content = ContentServiceV1Impl.init()
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


    
    private static var pushApp : PushFCMServiceV1Impl!
    public func PushAppService() -> PushFCMServiceV1Impl! {
        if VaslSdk.pushApp == nil {
            VaslSdk.pushApp = PushFCMServiceV1Impl.init()
        }
        return VaslSdk.pushApp
    }
    
    private static var mgsService : MgsServiceV1Impl!
    public func MgsServiceV1() -> MgsServiceV1Impl! {
        if VaslSdk.mgsService == nil {
            VaslSdk.mgsService = MgsServiceV1Impl.init()
        }
        return VaslSdk.mgsService
    }
    
    private static var operatorService : OperatorsServiceV1Impl!
    public func OperatorService() -> OperatorsServiceV1Impl! {
        if VaslSdk.operatorService == nil {
            VaslSdk.operatorService = OperatorsServiceV1Impl.init()
        }
        return VaslSdk.operatorService
    }
    
    private static var hambaziService : HambaziServiceV1Impl!
    public func HambaziService() -> HambaziServiceV1Impl! {
        if VaslSdk.hambaziService == nil {
            VaslSdk.hambaziService = HambaziServiceV1Impl.init()
        }
        return VaslSdk.hambaziService
    }
    
    private static var billingGlobal : billingImpl!
    public func BillingGlobalService() -> billingImpl! {
        if VaslSdk.billingGlobal == nil {
            VaslSdk.billingGlobal = billingImpl.init()
        }
        return VaslSdk.billingGlobal
    }
    
    private static var emailControll : EmailControllerImpl!
    public func EmailControllerService() -> EmailControllerImpl! {
        if VaslSdk.emailControll == nil{
            VaslSdk.emailControll = EmailControllerImpl.init()
        }
        return VaslSdk.emailControll
    }
    
    private static var EventManagerService : EventManagerServiceImpl!
    public func EventManagerService() -> EventManagerServiceImpl! {
             if VaslSdk.EventManagerService == nil{
               VaslSdk.EventManagerService = EventManagerServiceImpl.init()
           }
           return VaslSdk.EventManagerService
    }
    
    private static var EventServices : EventServiceImpl!
    public func EventService() -> EventServiceImpl! {
                if VaslSdk.EventServices == nil{
                   VaslSdk.EventServices = EventServiceImpl.init()
               }
               return VaslSdk.EventServices
        }
    private static var UserDeviceController : UserDeviceControllerImpl!
    public func UserDeviceVontroller() -> UserDeviceControllerImpl! {
        if VaslSdk.UserDeviceController == nil{
            VaslSdk.UserDeviceController = UserDeviceControllerImpl.init()
        }
        return VaslSdk.UserDeviceController
    }
    
    private static var KalingaServices : KalingaServiceV1Impl!
    public func KalingaServices() -> KalingaServiceV1Impl! {
        if VaslSdk.KalingaServices == nil{
            VaslSdk.KalingaServices = KalingaServiceV1Impl.init()
        }
        return VaslSdk.KalingaServices
    }
    
}
