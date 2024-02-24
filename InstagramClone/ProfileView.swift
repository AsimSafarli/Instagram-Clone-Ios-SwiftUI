//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 24.02.24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //PROFILE SECTION
            VStack{
                HStack{
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
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
