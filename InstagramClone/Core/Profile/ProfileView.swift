//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 24.02.24.
//

import SwiftUI

struct ProfileView: View {
    
    private let  gridItems :[GridItem]=[
        .init(.flexible() ,spacing: 3),
        .init(.flexible() ,spacing: 3),
        .init(.flexible() ,spacing: 3)
    ]
    
    var body: some View {
        ScrollView {
            VStack{
                VStack(spacing:10){
                    //PROFILE SECTION
                        HStack( spacing: 6){
                            Image("ppff")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .fontWidth(Font.Width.expanded)
                            Spacer()
                            HStack(spacing: 8){
                               UserStatView(value: 15, title: "Post")
                                UserStatView(value: 2000, title: "Followers")
                                UserStatView(value: 10, title: "Following")
                            }
                        }
                        .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Asim Safarli")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Hello everyone , i'm full-stack developer")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal)
                    Button(action: {
                        
                    }) {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .frame(width: 360 ,height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                    Divider()
                    
                    
                }
                LazyVGrid(columns: gridItems, spacing: 3){
                    ForEach(0...20,id:\.self){ index in Image("ppff")
                            .resizable()
                            .scaledToFit()
                        
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
