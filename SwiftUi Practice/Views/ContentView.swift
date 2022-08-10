//
//  ContentView.swift
//  SwiftUi Practice
//
//  Created by Apple on 09/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State private var isShowingDetailView = false
    @State var mobile = ""
    var body: some View {
    
        NavigationView
        {
          
            List{
                VStack{
        
                    SwiftUIView1()
                    Text("Login").font(.largeTitle).padding()
                        .foregroundColor(.yellow)
                      Divider()
                    Text("Enter the Required field")
                   
                       // .font(.headline).foregroundColor(Color.red)
                        .font(.title2)
                    VStack(spacing: 15.0 ) {
                        TextField("Enter the name", text: $name).padding()
                            .frame(width: 250, height: 45)
                            .cornerRadius(20.0)
                            .background(Color.gray.opacity(0.05))
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                        .border(.white, width: 1)
                        
                        TextField("Enter the mobile" , text: $mobile).padding()
                            .frame(width: 250, height: 45)
                            .cornerRadius(20.0)
                            .background(Color.gray.opacity(0.05))
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                           .border(.white, width: 1)
                        
                        
                               
                        
                    }
                .padding()
                }
                NavigationLink(destination: SwiftUIView2()) {
                       
                                       Text("Login")
                                       .foregroundColor(.black)
                                       .multilineTextAlignment(.center)
                                       .frame(width: 250, height: 45)
                                       .background(Color.green)
                                     Spacer()
                               }
           
            }
              .navigationTitle("Initial")
          }

      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
