//
//  Initializer.swift
//  SwiftUi Practice
//
//  Created by Apple on 16/08/22.
//

import SwiftUI

struct Initializer: View {
    let backgroundColor:   Color
    var count: Int
    var  title: String
    
    init(backgroundColors: Colors,count:Int,title:String)
    {
        self.backgroundColor = .red
        if backgroundColors == .red
        {
            self.count = 50
        }
        else
        {  self.title = "mango"
            self.count = count
        }

           self.title = "mango"
            //self.count = count
    }
    enum Colors
    {
        case red
        case green
    }
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 250, height: 250)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        Initializer(backgroundColors: .red, count: 20, title: "APPLE")
    }
}
