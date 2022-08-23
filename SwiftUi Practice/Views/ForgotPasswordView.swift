//
//  ForgotPasswordView.swift
//  SwiftUi Practice
//
//  Created by Apple on 22/08/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var phoneNumber = ""
    @State private var selectedCountry: String = ""
    var body: some View {
      //  Text("nkjcndflksv")
        VStack(alignment: .leading){
            Text("Forgot Password")
                .fontWeight(.bold)
                .padding()
                .frame(width: 350, height: 40,alignment:.leading)
                .font(.system(size: 30))
                
            Text("Enter Phone Number")
                .fontWeight(.semibold)
                .padding()
                .font(.system(size: 20))
            Text("Otp will be sent to this number")
                .fontWeight(.none)
                .padding()
                .padding(.top,-20)
//MARK: = textField CountryCode Mobile Number
            HStack(){
                  Button(action:
                        {
                    if selectedCountry != "" {
                        Text(Locale.current.localizedString(forRegionCode: selectedCountry) ?? selectedCountry)
                            .font(.system(size: 17))
                        //.foregroundColor(Color.gray)
                           
                    } else {
                        Text("+91")
                            .font(.system(size: 17))
                        
                    }
                })
                {
                    Picker("Country", selection: $selectedCountry) {
                        ForEach(getLocales(), id: \.id) { country in
                            Text(country.id).tag(country.id)
                           
                        }
                    }
                    
                }
                
                TextField("Enter Mobile No", text: $phoneNumber)
                    .frame(width: 300, height: 45)
            }
            .padding()
            NavigationLink(destination: OtpView())
            {
                Text("Submit")
                    .frame(width: 250, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black,lineWidth: 2))
                        .padding(.leading,50)
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .background(.black)
            }
        }
        .padding(.bottom,300)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}

//MARK: -For Country Picker
fileprivate struct Country {
    var id: String
    var name: String
    var phoneCode:String
}

fileprivate func getLocales() -> [Country] {
    let locales = Locale.isoRegionCodes
        .filter { $0 != "United States"}
        .compactMap {
            Country(id: $0,name: Locale.current.localizedString(forRegionCode: $0) ?? $0, phoneCode: $0)}
    return [Country(id: "US",name: Locale.current.localizedString(forRegionCode: "US") ?? "United States", phoneCode: "+91")] + locales
}

