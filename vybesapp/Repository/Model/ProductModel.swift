//
//  ProductModel.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import Foundation

// MARK: - ProducElement
struct ProducModel: Codable {
    let id, title, price: String
    let rating: Double
    let description: String
    let images: String
}

typealias Produc = [ProducModel]
