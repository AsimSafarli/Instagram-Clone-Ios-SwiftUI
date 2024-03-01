//
//  SearchView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 25.02.24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack{
                    ForEach(0...20,id: \.self){
                        post in SearchProfileView(profileImage: "ppff", profileName: "asimsafar", name: "Asim Safar")
                    }
                    
                }
                .searchable(text:$searchText ,prompt: "Search..."  )
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
