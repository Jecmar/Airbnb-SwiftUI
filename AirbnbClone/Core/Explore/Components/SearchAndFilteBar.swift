//
//  CustomSearchBar.swift
//  AirbnbClone
//
//  Created by Eduardo Martinez on 07/07/24.
//

import SwiftUI

struct SearchAndFilteBar: View {
    @Binding var displayFilter: Bool
    
    private let title: String = "Where to?"
    private let description: String = "Anywhere - Any week - Add guests"
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                
                VStack(alignment: .leading, spacing: 2){
                    Text(title)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text(description)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal, 5)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color(.white).clipShape(Capsule()))
            
            
            if(displayFilter){
                Spacer()
                
                Image("filter")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(6)
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 0.5)
                    }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SearchAndFilteBar(displayFilter: .constant(false))
}
