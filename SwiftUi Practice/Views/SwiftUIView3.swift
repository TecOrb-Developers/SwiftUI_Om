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
<<<<<<< HEAD
    @Environment(\.dismiss) private var dismiss
 
    var body: some View {
       
        ScrollView
        {
            NavigationLink("click here ",destination: LanguageSelectView())
                .padding([.leading, .trailing], 30)
                .padding([.top], 10)
                .frame(height: 50)
                //.navigationBarTitle("Language select")
            //
            
            VStack{
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
        .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
      
    }
}
=======
    var body: some View {
//        NavigationView
//        {
            ScrollView
            {
                NavigationLink("click here ",destination: LanguageSelectView())
                    .padding([.leading, .trailing], 30)
                    .padding([.top], 10)
                    .frame(height: 50)
                
                VStack{
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
            
       // }
        // .navigationBarBackButtonHidden(true)
    }
}


>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView3()
    }
}

