//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Austie Chou on 3/28/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 10)

            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { item in
                        NavigationLink {
                            LandmarkDetail(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                        
                      
                    }
                }
            }
            
        }
        .frame(height: 215)
        .padding(.bottom, 5)
        
    
    }
}
    
struct CategoryRow_Previews: PreviewProvider {
        static var landmarks = ModelData().landmarks
        
        static var previews: some View {
            CategoryRow(
                categoryName: landmarks[0].category.rawValue,
                items: Array(landmarks.prefix(4)))
        }
    }

