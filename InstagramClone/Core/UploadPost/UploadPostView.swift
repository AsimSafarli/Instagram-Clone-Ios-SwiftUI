import SwiftUI
import UIKit

struct UploadPostView: View {
    @State private var selectedImage: UIImage? = nil
    @State private var isShowingImagePicker = false
    @State private var postTitle = ""
    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            } else {
                Image(systemName: "photo")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                Text("Select an Image")
                    .foregroundColor(.gray)
                    .padding()
            }
            
            Button(action: {
                self.isShowingImagePicker = true
            }) {
                Text("Select Image")
                    .font(.headline)
                    .foregroundColor(.black)
            }
            .buttonStyle(BorderlessButtonStyle())
            .frame(width:  200 , height: 32 )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
        .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$selectedImage)
        }
    }
    
    func loadImage() {
      
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
