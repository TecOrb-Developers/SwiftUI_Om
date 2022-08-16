//
//  SwiftUIView4.swift
//  SwiftUi Practice
//
//  Created by Apple on 11/08/22.
//

import SwiftUI

struct SwiftUIView4: View {
    var body: some View {
        ZStack{
            Text("hlooo india ")
            LinearGradient(gradient: Gradient(colors: [.yellow,.blue]), startPoint: .top, endPoint: .bottom)
            edgesIgnoringSafeArea(.all)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView4()
    }
}
