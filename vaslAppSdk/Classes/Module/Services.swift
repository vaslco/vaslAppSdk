//
//  Services.swift
//  Pods
//
//  Created by Siamak on 4/14/19.
//

import Foundation

protocol Services {
    
    func analyticService() ->  AnalyticServiceV1Impl!
    
    func appService() -> AppServicesImpl!
    
    func appVersionService() -> AppVersionServiceV1Impl!
    
    func avatarService() -> AvatarServiceV1Impl!
    
    func billingInappService() -> BillingInappServiceV1Impl!
    
    func billingGlobalService() -> billingImpl!
    
    func chargeService() -> ChargeServiceV1Impl!
    
    func ContentService() -> ContentServiceV1Impl!
    
    func dynamicLinkService() -> DynamicLinkServiceV1Impl!
    
    func dynamicTableEndPointService() -> DynamicTableServiceEndpointsV1Impl!
    
    func dynamicTableService() -> DynamicTableServiceTablesV1Impl!
    
    func eventService() -> EventServiceImpl!
    
    func fileManagerService() -> FileManagerServiceV1Impl!
    
    func gameActionServiceV1() -> GameActionServiceV1Impl!
    
    func gameActionServiceV2() -> GameActionServiceV2Impl!
    
    func gameFeatureServiceV1() -> GameFeaturesServiceV1Impl!
    
    func gameFeatureServiceV2() -> GameFeaturesServiceV2Impl!
    
    func gameLeaderBoardServiceV1() -> GameLeaderBoardServiceV1Impl!
    
    func gameLeaderBoardServiceV2() -> GameLeaderBoardServiceV2Impl!
    
    func gamePointService() -> GamePointServiceV2Impl!
    
    func gamePointTypeService() -> GamePointTypeServiceV1Impl!
    
    func gameUserServiceV1() -> GameUsersServiceV1Impl!
    
    func gameUserServiceV2() -> GameUserServiceV2Impl!
    
    func GatewayService() -> GatewayServiceV1Impl!
    
    func geoService() -> GeoServiceV1Impl!
    
    func leagueService() -> LeagueServiceV1Impl!
    
    func pazhService() -> PazhServiceV1Impl!
    
    func PushAppService() -> PushFCMServiceV1Impl!
    
    func referralService() -> ReferralServiceV1Impl!
    
    func shopService() -> ShopServiceV1Impl!
    
    func supportService() -> SupportServiceV1Impl!
    
    func SubscriberService() -> SubscriberServiceV1Impl!
    
    func SubscriberV2Service() -> SubscriberServiceV2Impl!
    
    func MgsServiceV1() -> MgsServiceV1Impl!
    
    func OperatorService() -> OperatorsServiceV1Impl!
    
    func HambaziService() -> HambaziServiceV1Impl!
    
    func EmailControllerService() -> EmailControllerImpl!
    
    func EventManagerService() -> EventManagerServiceImpl!
    
    func EventService() -> EventServiceImpl!
    
    
}
