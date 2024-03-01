//
//  SearchProfileView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 25.02.24.
//

import SwiftUI

struct SearchProfileView: View {
    let profileImage : String
    let profileName:String
    let name:String
    var body: some View {
        
        HStack{
            Image(profileImage)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 40,height: 40)
            VStack{
                Text(profileName)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(name)
                    .font(.footnote)
                    .fontWeight(.medium)
            }
            Spacer()
            
            
        }
        .padding(.horizontal)
    }
}

struct SearchProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SearchProfileView(profileImage: "ppff", profileName: "asimsafar",name: "Asim Safarli")
    }
}
