//
//  NotficationView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 25.02.24.
//

import SwiftUI

struct NotficationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack{
                    ForEach(0...20,id: \.self){
                        post in CellNotficationView()
                    }
                    
                }
            }
            .navigationTitle("Notfication")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct NotficationView_Previews: PreviewProvider {
    static var previews: some View {
        NotficationView()
    }
}
