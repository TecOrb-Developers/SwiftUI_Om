//
//  SwiftUIView3.swift
//  SwiftUi Practice
//
//  Created by Apple on 10/08/22.
//

import SwiftUI

struct SwiftUIView3: View {
    @State var isModal = false
   @State var nameArr = ["Singh","Kumar","Chaurasiya","Shrama","katiyar","Kumar","Chaurasiya","Shrama","katiyar"]
    var body: some View {
        NavigationView
        {
        ScrollView
        {
    
            VStack{
                NavigationLink("click here ",destination: Initializer(backgroundColors: .red, count: 30, title: "Papaya"))
                    ForEach(nameArr.indices){ index in
                        ScrollView(.horizontal, showsIndicators: false, content: {
                        
                            HStack{
                                ForEach(nameArr.indices){ index  in
                                   Rectangle()
                            
                                        .fill(Color.blue)
                                        .frame(width: 350, height: 200)
                                        .cornerRadius(10)
                                        .shadow(color: .black, radius: 1)
                                        .opacity(0.5)
                                     
                                        .padding()
//
                                }
                            }
                        })
                            
                   }
               }
            
             }
      
        } 
        }
    }
        


struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView3()
    }
}

