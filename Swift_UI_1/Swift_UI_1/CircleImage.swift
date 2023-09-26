//
//  CircleImage.swift
//  Swift_UI_1
//
//  Created by Riti Sinha on 01/08/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        VStack (alignment: .leading){
            Image("gojo.jpg")
                .frame(width:250)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 6)
            
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
