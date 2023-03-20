//
//  CatogryModel.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import UIKit

struct CatogryModel: Codable,Equatable {
    static func ==(lhs: CatogryModel, rhs: CatogryModel) -> Bool { return lhs.id == rhs.id }
    var id: String = UUID().uuidString
    var title: String?
    var subTitle: String?
    var isSelected: Bool?
    
}
typealias CatogryModelResponse = [CatogryModel]
