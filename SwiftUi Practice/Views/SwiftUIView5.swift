//
//  SwiftUIView5.swift
//  SwiftUi Practice
//
//  Created by Apple on 16/08/22.
//

import SwiftUI

struct SwiftUIView5: View {
    var body: some View {

        ZStack{
            LinearGradient(gradient: .init(colors: [.blue,.red]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
               
                      loginView()
                      
                   }
                 }
               }

struct SwiftUIView5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView5()
    }
}

struct loginView: View {
    @State var index = 0
    var body: some View {
        VStack{
          //  Backbutton()
            Image("logo")
             .resizable()
             .scaledToFit()
             .frame(width: 80, height: 80)

             Text("HOMP")
         Text("Sign in").multilineTextAlignment(.leading)
             .font(.largeTitle)
            
            HStack{
                Button(action: {
                  
                    self.index = 0
                        })
             {
                 Text("Existing")
                     .foregroundColor(self.index == 0 ? .black : .white)
                     .fontWeight(.semibold)
                     .padding(.vertical , 10)
                     .frame(width: (UIScreen.main.bounds.width - 40) / 2)
                 
             }        .background(self.index == 0 ? Color.white : Color.red)
                    .clipShape(Capsule())
                
                Button(action:{
                    self.index = 1
                        })
             {
                 Text("New")
                     .foregroundColor(self.index == 1 ? .black : .white)
                     .fontWeight(.semibold)
                     .padding(.vertical , 10)
                     .frame(width: (UIScreen.main.bounds.width - 40) / 2)
             }        .background(self.index == 1 ? Color.white : Color.red)
                    .clipShape(Capsule())
        }
            .background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.bottom,20)
            login()
    }
        .padding(.bottom, 20)
 }
}

struct login : View {
    @State var name:String = ""
    @State var Email:String = ""
    @State var Mobile:String = ""
    var body: some View
    {
   VStack{
            HStack(spacing: 10){
                  
                    Image("flag_icon")
                    TextField("Enter Mobile No", text: $Mobile)
                        .padding()
                    .frame(width: 300, height: 45)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.blue,lineWidth: 1))
                     
                }.padding(.vertical, 10)
                
              
                   
                    TextField("Enter name ", text: $name)
                    .padding()
                    .frame(width: 300, height: 45)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue,lineWidth: 1))
                  
                  
                    TextField("Enter Email", text: $Email)
                    .padding()
                    .frame(width: 300, height: 45)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue,lineWidth: 1))
               
            
   }
   .edgesIgnoringSafeArea(.top)
   .padding(.bottom, 20)
           
    }
}

struct Backbutton : View{
    var body: some View
    {
        Button(action: {}, label:
            {
                Text(" Back button ")
            })
    
       
    }
}
