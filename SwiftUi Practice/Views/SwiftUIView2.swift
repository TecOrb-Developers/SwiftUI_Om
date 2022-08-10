//
//  SwiftUIView2.swift
//  SwiftUi Practice
//
//  Created by Apple on 10/08/22.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        List
        {
            VStack{
                HStack{
                    Image("dish_one")
                    Text("Testy")
                }
                HStack{
                    Image("dish_two")
                    Text("Good")
                }
                HStack{
                    Image("food_banner")
                    Text("Delicious")
                }
            }
           
            
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
