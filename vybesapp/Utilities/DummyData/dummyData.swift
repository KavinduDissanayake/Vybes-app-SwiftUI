//
//  dummyData.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import Foundation

let sampleCatogry1 = CatogryModel(title: "All Product", subTitle: "All Product",isSelected: false)
let sampleCatogry2 = CatogryModel(title: "Popular", subTitle: "Popular",isSelected: false)
let sampleCatogry3 = CatogryModel(title: "Recent", subTitle: "Recent",isSelected: false)
let sampleCatogry4 = CatogryModel(title: "New", subTitle: "New",isSelected: false)


let sampleProduct = ProducModel(id: "2", title: "Text", price: "Tet", rating: 2, description:"", images: "https://i.postimg.cc/7L40nkk6/snapdragon-vr820.png")
let samepleCatogryArrayList:[CatogryModel] = [
    sampleCatogry1,
    sampleCatogry2,
    sampleCatogry3,
    sampleCatogry4
    ]
