//
//  CellNotficationView.swift
//  InstagramClone
//
//  Created by Asim Seferli on 01.03.24.
//

import SwiftUI

struct CellNotficationView: View {
    var body: some View {
        
        HStack{
            Image("ppff")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 40,height: 40)
            Text("feridmustafayev")
                .font(.headline)
                .fontWeight(.bold)
            Text("Liked your photo")
                .fontWeight(.regular)
                .font(.footnote)
                .foregroundColor(.black)
            
            Image("gs")
                .resizable()
                .scaledToFit()
                .frame(width: 70,height: 70)
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct CellNotficationView_Previews: PreviewProvider {
    static var previews: some View {
        CellNotficationView()
    }
}
