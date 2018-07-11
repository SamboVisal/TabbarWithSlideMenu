//
//  ExploreModel.swift
//  TabBar
//
//  Created by Pisal on 7/3/2561 BE.
//  Copyright © 2561 BE Pisal. All rights reserved.
//

import Foundation

class ExploreModel: NSObject {
    
    private struct Constant {
        static let accomodationName = "Accomodation"
        static let serviceName = "Service"
        static let activityName = "Activity"
    }
    
    var type: String?
    var contentExplore: [ContentExplore]?
    
    static func getExploreData() -> [ExploreModel]{
        
        let accomodationType = ExploreModel()
        let content = ContentExplore()
        var dataContent = [ContentExplore]()
        accomodationType.type = Constant.accomodationName
        content.amountArticle = 20
        content.imageName = "banner1"
        content.typeExplore = Constant.accomodationName
        dataContent.append(content)
        accomodationType.contentExplore = dataContent
        
        let activityType = ExploreModel()
        let content2 = ContentExplore()
        var dataContent2 = [ContentExplore]()
        accomodationType.type = Constant.activityName
        content2.amountArticle = 10
        content2.imageName = "banner1"
        content2.typeExplore = Constant.activityName
        dataContent2.append(content2)
        activityType.contentExplore = dataContent2
        
        let serviceType = ExploreModel()
        let content3 = ContentExplore()
        var dataContent3 = [ContentExplore]()
        serviceType.type = Constant.serviceName
        content3.typeExplore = Constant.serviceName
        content3.amountArticle = 40
        
        dataContent3.append(content3)
        serviceType.contentExplore = dataContent3
        
        
        return [accomodationType, activityType, serviceType]
        
    }
    
    
    
}
class ContentExplore: NSObject {
    
    var typeExplore: String?
    var amountArticle: Int?
    var imageName: String?
}
