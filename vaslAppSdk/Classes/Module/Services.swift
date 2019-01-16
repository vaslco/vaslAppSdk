//
//  Services.swift
//  Vmbaas
//
//  Created by Ali shatergholi on 1/2/18.
//  Copyright © 2018 Vaslapp. All rights reserved.
//

import Foundation

protocol Services {    
    
    func analyticService() -> analyticServiceV1Impl!
    
    func appService() -> AppServicesImpl!
    
    func billingInappService() -> BillingInappServiceV1Impl!
    
    func chargeService() -> ChargeServiceV1Impl!
    
    func ContentService() -> ContentServiceV2Impl!
    
    func dynamicLinkService() -> DynamicLinkServiceV1Impl!
    
    func dynamicTableEndPointService() -> DynamicTableServiceEndpointsV1Impl!
    
    func dynamicTableService() -> DynamicTableServiceTablesV1Impl!
    
    func fileManagerService() -> FileManagerServiceV1Impl!
    
    func gameActionService() -> GameActionServiceV2Impl!
    
    func gameFeatureService() -> GameFeaturesServiceV2Impl!
    
    func gameLeaderBoardService() -> GameLeaderBoardServiceV2Impl!
    
    func gamePointTypeService() -> GamePointTypeServiceV1Impl!
    
    func gameUserService() -> GameUserServiceV2Impl!
    
    func GatewayService() -> GatewayServiceV1Impl!
    
    func leagueService() -> LeagueServiceV1Impl!
    
    func PushAppService() -> PushFCMServiceV1Impl!
    
    func shopService() -> ShopServiceV1Impl!
    
    func supportService() -> SupportServiceV1Impl!
    
    
    func SubscriberService() -> SubscriberServiceV1Impl!
    
    func SubscriberV2Service() -> SubscriberServiceV2Impl!
    
}
