//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Eduardo Martinez on 06/07/24.
//

import SwiftUI

struct ListingItemView: View {
    //This images is only for test the  functionality and design
    //TODO: Connect with an API
    var images = ["https://www.kayak.com.mx/rimg/himg/65/cb/b0/expediav2-389080-983539-536473.jpg?width=968&height=607&crop=true", "https://www.kayak.com.mx/rimg/himg/c0/6f/9a/expediav2-389080-fa0f20-157816.jpg?width=968&height=607&crop=true","https://www.kayak.com.mx/rimg/himg/b1/4c/fe/expediav2-389080-11bead-115208.jpg?width=968&height=607&crop=true", "https://www.kayak.com.mx/rimg/himg/cc/ca/e4/expediav2-389080-95b99d-572231.jpg?width=968&height=607&crop=true"]
    
    var body: some View {
        VStack(spacing: 8){
            // Image section
            TabView{
                ForEach(images, id: \.self){ image in
                    AsyncImage(url: URL(string: image)){ result in
                        result.image?.resizable().scaledToFill()
                    }
                }
            }
            .frame(height: 350)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .tabViewStyle(.page)
            
            // Details section
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.bold)
                    
                    Text("15 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    
                    Text("$600 night")
                        .fontWeight(.bold)
                }
                
                
                Spacer()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("3.14")
                }
            }
            .font(.footnote)
            .padding(3)
        }
    }
}

#Preview {
    ListingItemView()
}
