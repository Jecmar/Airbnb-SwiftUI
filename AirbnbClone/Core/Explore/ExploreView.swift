//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Eduardo Martinez on 06/07/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 22){
                    ForEach(0 ... 10, id: \.self){ listening in
                        ListingItemView()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
