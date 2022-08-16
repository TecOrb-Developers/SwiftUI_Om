//
//  SwiftUIView5.swift
//  SwiftUi Practice
//
//  Created by Apple on 16/08/22.
//

import SwiftUI

struct SwiftUIView5: View {
    var body: some View {
        NavigationView
        {
        ScrollView{
            VStack{
                ForEach(0..<10){ index in
                   Rectangle()
                        .fill(Color.blue)
                        .frame(width: 350, height: 200)
                        .padding(10)
                    
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.automatic)
        .navigationBarBackButtonHidden(true)
    }
  }
}

struct SwiftUIView5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView5()
    }
}
