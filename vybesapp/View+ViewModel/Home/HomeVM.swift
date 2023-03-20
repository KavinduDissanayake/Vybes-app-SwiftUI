//
//  HomeVM.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import Foundation


class HomeVM: BaseVM {
    
    //MARK: - PROPERTIES
    @Published var categoryList: [CatogryModel] = samepleCatogryArrayList
    @Published var productList: [ProducModel]  = []
    @Published var goToDetails = false
    
    @Published var selectedProduct:ProducModel?
}


extension HomeVM {
    func toggleSelection(at index: Int) {
        let item = categoryList[index]
        categoryList = categoryList.map { catogry in
            var c = catogry
            c.isSelected = false
            return c
        }
        
        if let index = categoryList.firstIndex(of: item) {
            categoryList[index].isSelected = true
        }
        
    }
    
}

extension HomeVM {
    
    func fetchProductsList(completion: @escaping CompletionHandler) {
        
        //check internet connection
        guard Reachability.isInternetAvailable() else {
            completion(false,"Internet connection appears to be offline. ")
            return
        }
        
        AFWrapper.sharedInstance.requestGetProducts { reponse in
           
            self.productList = reponse
            
           completion(true,"Data get Sucess")
        } failure: { error in
            print(error.localizedDescription)
            completion(false,error.localizedDescription)
        }

    }
}
