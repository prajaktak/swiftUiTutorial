//
//   LandmarkList.swift
//  swiftUiTutorial
//
//  Created by Prajakta Kulkarni on 23/03/2020.
//  Copyright © 2020 Prajakta Kulkarni. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
               List {
                 Toggle(isOn: $userData.showFavoritesOnly) {
                        Text("Favorites only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
              
           }
            .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
             LandmarkList()
                 .environmentObject(UserData())
         }
    }
}

