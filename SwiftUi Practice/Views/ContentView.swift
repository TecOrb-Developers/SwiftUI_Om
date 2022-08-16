//
//  ContentView.swift
//  SwiftUi Practice
//
//  Created by Apple on 09/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @ObservedObject private var user : User = User()
    @State private var isShowingDetailView = false
    @State var mobile = ""
    var body: some View {
//        ZStack{
//            Image("Splash_Screen _with_text")
//                .edgesIgnoringSafeArea(.all)
//                .frame(width: .infinity, height: .infinity)
//        }
       NavigationView
        {

        List{
            VStack{
               Label:
                  do {
                        Text("login".uppercased())
                     }
                        Text("Enter the Required field")

                           // .font(.headline).foregroundColor(Color.red)
                            .font(.title2)
                        VStack(spacing: 15.0 ) {
                            TextField("Enter the name", text: $name).padding()
                                .frame(width: 250, height: 45)
                                .cornerRadius(20.0)
                                .background(Color.gray.opacity(0.05))
                                .foregroundColor(.red)
                                .font(.system(size: 15))
                            .border(.white, width: 1)

                            TextField("Enter the mobile" , text: $mobile).padding()
                                .frame(width: 250, height: 45)
                                .cornerRadius(20.0)
                                .background(Color.gray.opacity(0.05))
                                .foregroundColor(.red)
                                .font(.system(size: 15))
                               .border(.white, width: 1)

                             }
                           .padding()
                          }
                         NavigationLink(destination: SwiftUIView3()) {

                             Text("login".uppercased())
                                 .frame(minWidth: 0, maxWidth: .infinity)
                                 
                                 .padding(10)
                                // .padding(.horizontal, 50)
                                 .background(Color.blue.cornerRadius(10).shadow(radius: 10))
                }
                         .padding([.leading, .trailing], 30)
                         .padding([.top], 10)
                         .frame(height: 50)
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
