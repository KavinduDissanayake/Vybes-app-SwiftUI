//
//  RootView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var router: ViewRouter
    @State var isAnimated = false
    
    var body: some View {
        NavigationStack {
            containedView(roots: router.currentRoot)
                .id(UUID().uuidString)
                .transition(.slide).animation(.linear(duration: 0.2), value: isAnimated)
                .onAppear() {
                    DispatchQueue.main.async {
                        isAnimated = true
                    }
                }
        }//:NavigationView
    }
    
    func containedView(roots: Roots) -> AnyView {
        switch router.currentRoot {
        case .signIn:
            return AnyView(SignInView())
        case .userTabs:
            return AnyView(MainTabBar())
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(ViewRouter.shared)
    }
}
