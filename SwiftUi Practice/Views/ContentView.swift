//
//  ContentView.swift
//  SwiftUi Practice
//
//  Created by Apple on 09/08/22.
//

// MARK: - 1St screen
import SwiftUI
import Alamofire

struct ContentView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        NavigationView
        {
            ZStack{
                
                NavigationLink(destination: SwiftUIView3())
                {
                    Image("Tutorial_Screen_first")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .padding(.bottom,20)
                    //
                }
                
            }
            
            
        }
//    
         .navigationBarBackButtonHidden(true) // Hide default button
        .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//    struct loginPage:View
//    {
//        @State var username:String = ""
//        var body: some View
//        {
//            VStack()
//            {
////
//                Image("Tutorial_Screen_first")
//
//                    .resizable()
//                scaledToFill()
// Text("Login")
//                    .bold()
//                padding()
//                Text("Please")
//                    .fontWeight(.semibold)
//                HStack{
//                    VStack(alignment: .leading){
//                        Text("UserName")
//                        Text("Password")
//                    }
//                    VStack{
//                        TextField("Type Some Thing", text: $username)
//
//                        TextField("Type Some Thing", text: $username)
//                    }
//                    .padding()
//                }
////
//            }.padding(.bottom , 200)
//        }
//    }
//

