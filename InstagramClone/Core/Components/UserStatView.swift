//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 25.02.24.
//

import SwiftUI

struct UserStatView: View {
    let value :Int
    let title :String
    
    var body: some View {
        VStack{
            Text("\(value)")
            Text (title)
        }
        .frame(width: 76)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 10, title: "Post")
    }
}
