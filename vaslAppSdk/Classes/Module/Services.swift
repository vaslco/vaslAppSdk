//
//  Services.swift
//  Pods
//
//  Created by Siamak on 4/14/19.
//

import Foundation

protocol Services {
    
    func AnalyticService() ->  AnalyticServiceV1Impl!
    
    func AppService() -> AppServicesImpl!
    
    func AppVersionService() -> AppVersionServiceV1Impl!
    
    func AvatarService() -> AvatarServiceV1Impl!
    
    func BillingInappService() -> BillingInappServiceV1Impl!
    
    func BillingGlobalService() -> billingImpl!
    
    func ChargeService() -> ChargeServiceV1Impl!
    
    func ContentService() -> ContentServiceV1Impl!
    
    func DynamicLinkService() -> DynamicLinkServiceV1Impl!
    
    func DynamicTableEndPointService() -> DynamicTableServiceEndpointsV1Impl!
    
    func DynamicTableService() -> DynamicTableServiceTablesV1Impl!
    
    func FileManagerService() -> FileManagerServiceV1Impl!
    
    func GameActionServiceV1() -> GameActionServiceV1Impl!
    
    func GameActionServiceV2() -> GameActionServiceV2Impl!
    
    func GameFeatureServiceV1() -> GameFeaturesServiceV1Impl!
    
    func GameFeatureServiceV2() -> GameFeaturesServiceV2Impl!
    
    func GameLeaderBoardServiceV1() -> GameLeaderBoardServiceV1Impl!
    
    func GameLeaderBoardServiceV2() -> GameLeaderBoardServiceV2Impl!
    
    func GamePointService() -> GamePointServiceV2Impl!
    
    func GamePointTypeService() -> GamePointTypeServiceV1Impl!
    
    func GameUserServiceV1() -> GameUsersServiceV1Impl!
    
    func GameUserServiceV2() -> GameUserServiceV2Impl!
    
    func GatewayService() -> GatewayServiceV1Impl!
    
    func GeoService() -> GeoServiceV1Impl!
    
    func LeagueService() -> LeagueServiceV1Impl!
    
    func PazhService() -> PazhServiceV1Impl!
    
    func PushAppService() -> PushFCMServiceV1Impl!
    
    func ReferralService() -> ReferralServiceV1Impl!
    
    func ShopService() -> ShopServiceV1Impl!
    
    func SupportService() -> SupportServiceV1Impl!
    
    func SubscriberService() -> SubscriberServiceV1Impl!
    
    func SubscriberV2Service() -> SubscriberServiceV2Impl!
    
    func MgsServiceV1() -> MgsServiceV1Impl!
    
    func OperatorService() -> OperatorsServiceV1Impl!
    
    func HambaziService() -> HambaziServiceV1Impl!
    
    func EmailControllerService() -> EmailControllerImpl!
    
    func EventManagerService() -> EventManagerServiceImpl!
    
    func EventService() -> EventServiceImpl!
    
    func UserDeviceVontroller() -> UserDeviceControllerImpl!
    
    func KalingaServices() -> KalingaServiceV1Impl!
    
    func ArmanVarzeshServices() -> AvServiceImpl!
    
    
}
