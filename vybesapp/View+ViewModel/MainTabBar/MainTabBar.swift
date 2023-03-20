//
//  MainTabBar.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            
            HomeView()
            .tabItem {
                Image("ic_home")
                    .resizable()
    
            }
                    
            HomeView()
            .tabItem {
                Image("ic_near_me")
                    .resizable()
    
            }
            
            HomeView()
            .tabItem {
                Image("ic_favorite")
                    .resizable()
    
            }
            
            
            HomeView()
            .tabItem {
                Image("ic_person")
                    .resizable()
    
            }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
