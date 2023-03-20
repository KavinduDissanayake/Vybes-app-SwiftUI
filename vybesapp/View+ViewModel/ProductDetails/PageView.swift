//
//  PageView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct PageView<Content: View>: View {
    var pageCount: Int
    @Binding var currentPage: Int
    var content: () -> Content
    
    init(pageCount: Int, currentPage: Binding<Int>, @ViewBuilder content: @escaping () -> Content) {
        self.pageCount = pageCount
        self._currentPage = currentPage
        self.content = content
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    self.content()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .content.offset(x: CGFloat(currentPage) * -geometry.size.width)
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            .gesture(
                DragGesture().onChanged { value in
                    if value.translation.width < 0 {
                        currentPage = min(currentPage + 1, pageCount - 1)
                    } else if value.translation.width > 0 {
                        currentPage = max(currentPage - 1, 0)
                    }
                }
            )
        }
    }
}

//struct PageView_Previews: PreviewProvider {
//
//    var colors = [Color.red, Color.green, Color.blue]
//
//       @State private var currentPage = 0
//
//    static var previews: some View {
//        VStack {
//                    PageView(pageCount: colors.count, currentPage: $currentPage) {
//                        ForEach(0..<colors.count) { index in
//                            colors[index]
//                        }
//                    }
//                    .aspectRatio(3/2, contentMode: .fit)
//
//                    HStack {
//                        ForEach(0..<colors.count) { index in
//                            Circle()
//                                .fill(currentPage == index ? Color.white : Color.gray)
//                                .frame(width: 10, height: 10)
//                        }
//                    }
//                }
//    }
//}
