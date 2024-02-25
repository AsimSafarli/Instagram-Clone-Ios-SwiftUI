//
//  FeedCellView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 25.02.24.
//

import SwiftUI

struct FeedCellView: View {
    let value :Int
    let title :String
    let profileImage: String
    let image :String
    let describe : String
    let likes :Int
    var body: some View {
        VStack{
            //pp and title
            HStack{
                Image(profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .clipShape(Circle())
                Text(title)
                    .fontWeight(.semibold)
                    .font(.headline)
                Spacer()
            }
            .padding(.leading,8)
            
            //image
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 300 )
                .clipShape(Rectangle())
                .padding(.leading,0)
        }
        HStack{
            Button{
                
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(.black)
            }
            Button{
                
            } label: {
                Image(systemName: "bubble.right")
                 
                    .foregroundColor(.black)
            }
            Spacer()
        }
        .padding(.leading,8)
        HStack{
            Text("\(likes) likes")
                .fontWeight(.semibold)
                .font(.footnote)
                .frame(width: .infinity,alignment: .leading)
                .padding(.leading,8)
                .padding(.top,2)
                .padding(.bottom,2)
            Spacer()
        }
        .padding(.leading,8)
        
       
            
        HStack(spacing:3){
            Text(title)
                .fontWeight(.semibold)
            +
            Text(describe)
                .fontWeight(.light)
        }
        .padding(.leading,8)
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView(value: 10, title: "asimsafar",profileImage:"ppff", image: "gs" , describe: "Hello everyone aajajssjksjaksjasassaksjakskasjajk",likes: 300)
    }
}
