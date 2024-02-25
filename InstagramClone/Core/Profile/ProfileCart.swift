//
//  ProfileCart.swift
//  InstagramClone
//
//  Created by Asim Seferli on 25.02.24.
//

import SwiftUI

struct ProfileCart: View {
    var body: some View {
        Image(systemName: "person.crop.circle")
            .fontWidth(Font.Width.expanded)
        HStack(spacing: 20){
            VStack{
                Text("10")
                Text ("post")
            }
            VStack{
                Text("10")
                Text ("followers")
            }
            VStack{
                Text("10")
                Text ("follow")
            }

        }
    }
}

struct ProfileCart_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCart()
    }
}
