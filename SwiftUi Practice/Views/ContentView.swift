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
<<<<<<< HEAD
    @Environment(\.dismiss) private var dismiss
=======
    @State var name = ""
    @State var username:String = ""
    @ObservedObject private var user : User = User()
    @State private var isShowingDetailView = false
    @State var mobile = ""
    @State var isSelect:Bool = false
>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c
    var body: some View {
        
        NavigationView
        {
<<<<<<< HEAD
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
=======
            
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
                ZStack{
                    navigation(text: "Login", nextView: SwiftUIView3())
                        .padding()
                        .frame(width: 250, height: 40,alignment: .center)
                        .background(.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    }
                    
                    .padding([.leading, .trailing], 20)
                    .padding([.top], 10)
                    .frame(height: 50)
                }
            }
        .accentColor(.red)
        }
       
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct loginPage:View
    {
        @State var username:String = ""
        var body: some View
        {
            VStack(alignment: .leading, spacing: 10)
            {
                Text("Login")
                    .bold()
                padding()
                Text("Please")
                    .fontWeight(.semibold)
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text("UserName")
                        Text("Password")
                    }
                    VStack{
                        TextField("Type Some Thing", text: $username)
                        
                        TextField("Type Some Thing", text: $username)
                    }
                    .padding()
                }
                
            }.padding()
        }
    }

>>>>>>> d848bcb86c4d2c57807ce8776d47756dafd66d2c

