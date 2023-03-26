//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Austie Chou on 3/25/23.
//

import SwiftUI

extension View {
    func getScreenBounds() -> CGRect {
        return UIScreen.main.bounds
    }
}

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly =  false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            ( !showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Show Favarite Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmark")
            .frame(maxWidth: .infinity)

        }
       

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
