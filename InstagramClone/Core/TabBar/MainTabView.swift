//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 24.02.24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
          FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            UploadPostView()
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            NotficationView()
                .tabItem{
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                }
        }
        .accentColor(Color("tabBarColor"))
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
