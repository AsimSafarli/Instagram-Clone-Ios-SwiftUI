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
           ContentView()
                .tabItem{
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notfications")
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
